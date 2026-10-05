{
  description = "Typst CV in three templates: custom, basic-resume, brilliant-cv";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      inherit (nixpkgs.lib) concatMapStrings mapAttrsToList;

      # Fonts required by the templates: Roboto + Source Sans Pro (brilliant-cv
      # metadata), Font Awesome 7 (brilliant-cv contact icons).
      cvFonts = with pkgs; [
        roboto
        source-sans-pro
        font-awesome
      ];
      fontConfig = pkgs.makeFontsConf { fontDirectories = cvFonts; };

      # @preview packages used by the sources, vendored into a typst cache tree
      # so `nix build` compiles fully offline inside the sandbox.
      # Layout mirrors typst's own cache: $XDG_CACHE_HOME/typst/packages/preview/<name>/<version>
      # Hashes are NAR hashes of the unpacked tarball (nix flake prefetch).
      typstPkgs = {
        basic-resume = {
          version = "0.2.9";
          hash = "sha256-iRPfdb+68aSFQNZ5D7YRx3O4zAFoVEo4wmgJTXJZahs=";
        };
        scienceicons = {
          version = "0.1.0";
          hash = "sha256-xbqURYis+fBX0Wozcv8Ld0CAZv0zH05pYqylJhSmYjQ=";
        };
        brilliant-cv = {
          version = "4.1.0";
          hash = "sha256-pTq2q8CkypDJgTHnpeV0UrYe2S5dkkjqdgq3jhOsYnc=";
        };
        fontawesome = {
          version = "0.6.0";
          hash = "sha256-17IcZiVwT6xCucSIi5kfMDqWG1a503vVyLiiaTyoASU=";
        };
      };

      typstPackage =
        name: pkg:
        pkgs.runCommand "typst-pkg-${name}-${pkg.version}" { } ''
          mkdir -p $out/typst/packages/preview/${name}/${pkg.version}
          cp -r ${pkgs.fetchzip {
            url = "https://packages.typst.org/preview/${name}-${pkg.version}.tar.gz";
            inherit (pkg) hash;
          }}/* $out/typst/packages/preview/${name}/${pkg.version}/
        '';

      typstCache = pkgs.runCommand "typst-package-cache" { } ''
        mkdir -p $out/typst/packages/preview
        ${concatMapStrings (dir: ''
          cp -r ${dir}/typst/packages/preview/* $out/typst/packages/preview/
        '') (mapAttrsToList typstPackage typstPkgs)}
      '';
    in
    {
      # Usage: nix develop -c typst compile resume.typ resume.pdf
      # First compile downloads @preview packages to ~/.cache/typst (network
      # required once); afterwards it is offline. For fully offline builds,
      # use `nix build`.
      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.typst ];
        FONTCONFIG_FILE = fontConfig;
      };

      # Usage: nix build; PDFs land in result/
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "typst-cv";
        version = "0.1.0";
        src = nixpkgs.lib.cleanSource ./.;
        nativeBuildInputs = [ pkgs.typst ];
        FONTCONFIG_FILE = fontConfig;
        XDG_CACHE_HOME = typstCache;
        buildPhase = ''
          typst compile resume.typ resume.pdf
          typst compile resume-basic.typ resume-basic.pdf
          typst compile resume-brilliant.typ resume-brilliant.pdf --input profile=litfill
        '';
        installPhase = ''
          mkdir -p $out
          cp resume.pdf resume-basic.pdf resume-brilliant.pdf $out/
        '';
      };
    };
}
