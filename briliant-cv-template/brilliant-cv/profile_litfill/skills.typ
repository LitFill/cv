// Imports
#import "@preview/brilliant-cv:4.1.0": cv-section, cv-skill, cv-skill-with-level, h-bar


#cv-section("Skills")

#cv-skill-with-level(
  type: [Primary Languages],
  level: 5,
  info: [Haskell #h-bar() Koka #h-bar() OCaml #h-bar() Rust #h-bar() TypeScript/JavaScript],
)

#cv-skill(
  type: [Familiar With],
  info: [Go #h-bar() Idris2 #h-bar() Agda #h-bar() Lean #h-bar() Common Lisp #h-bar() Nix #h-bar() Nushell #h-bar() Odin #h-bar() Prolog #h-bar() C #h-bar() Uiua],
)

#cv-skill-with-level(
  type: [Haskell Ecosystem],
  level: 4,
  info: [servant #h-bar() warp #h-bar() aeson #h-bar() megaparsec #h-bar() lens #h-bar() QuickCheck #h-bar() hedgehog #h-bar() streaming #h-bar() polysemy #h-bar() hspec #h-bar() tasty #h-bar() hasql],
)

#cv-skill(
  type: [Tools],
  info: [Git #h-bar() Linux (NixOS, Arch) #h-bar() Neovim #h-bar() Cabal #h-bar() GHCup #h-bar() HLS #h-bar() Stack #h-bar() Nix #h-bar() Docker #h-bar() SQLite #h-bar() Node.js #h-bar() Playwright],
)

#cv-skill(
  type: [Other Frameworks],
  info: [Astro #h-bar() React],
)
