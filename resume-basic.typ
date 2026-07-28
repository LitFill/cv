#import "@preview/basic-resume:0.2.9": *

#let name = "Muhammad Fakhrur Rozi"
#let location = "Central Java, Indonesia"
#let email = "marrazy54@gmail.com"
#let github = "github.com/LitFill"
#let linkedin = "linkedin.com/in/muhammad-ar-razzy-b04179208/"
#let phone = "+62 851 1130 4115"
#let personal-site = "rozy.my.id"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#1B3A5C",
  font: "Libertinus Serif",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

== Summary

Self-taught in computer science during and after an Arabic Literature degree, driven by a fascination with formal languages and type systems. Functional programmer with deep experience in Haskell and Koka, actively learning Scala 3. Passionate about type systems, compilers, language design, category theory, and purely functional design. Seeking a junior role where I can contribute to production FP systems and grow alongside a strong engineering team.

== Education

#edu(
  institution: "Ma'had Aly Andalusia Banyumas",
  location: "Banyumas, Indonesia",
  dates: dates-helper(start-date: "2021", end-date: "2025"),
  degree: "Sarjana Sastra Arab (Arabic Literature)",
)
- GPA: 3.65 / 4.0
- Self-taught in CS during and after this degree, driven by fascination with formal languages and type systems

#edu(
  institution: "SMA Islam Andalusia Kebasen",
  location: "Banyumas, Indonesia",
  dates: dates-helper(start-date: "2017", end-date: "2020"),
  degree: "High School",
)

== Skills
- *Primary Languages*: Haskell, Koka, OCaml, Rust, TypeScript/JavaScript
- *Familiar With*: Go, Idris2, Agda, Lean, Common Lisp, Nix, Nushell, Odin, Prolog, C, Uiua
- *Haskell Ecosystem*: servant, warp, aeson, megaparsec, lens, QuickCheck, hedgehog, streaming, polysemy, hspec, tasty, req, hasql, relude
- *Other Frameworks*: Astro, React
- *Tools*: Git, Linux (NixOS, Arch), Neovim, Cabal, GHCup, HLS, Stack, Nix, Docker, SQLite, hledger, Node.js, Playwright

== Projects

#project(
  name: "derive — Koka Derive CLI",
  url: "https://github.com/LitFill/derive",
)
- CLI tool eliminating boilerplate by auto-deriving show, eq, and typeclass-like functions in Koka (2 derivation kinds, file I/O, dry-run mode). Built because Koka lacked metaprogramming — solved a real workflow pain point.

#project(
  name: "sina — Hindley-Milner Type Inference",
  url: "https://github.com/LitFill/sina",
)
- Full HM type inference (Algorithm W) from scratch in Haskell: parser, AST, constraint-based type checker with let-polymorphism. Supports integers, booleans, conditionals, let-bindings, binary ops.

#project(
  name: "lens — Optics in Koka",
  url: "https://github.com/LitFill/lens",
)
- Port of Haskell's lens library to Koka: van Laarhoven lenses with view/set/over, lens composition, and identity lens.

#project(
  name: "rayt — Ray Tracer",
  url: "https://github.com/LitFill/rayt",
)
- Ray tracer in Haskell generating PPM images with sphere geometry, surface normal rendering, and color output.

== Experience

#work(
  title: "Secretary / Administrative Automation",
  location: "Banyumas, Indonesia",
  company: "Yayasan Al Anwar Al Hisyamiyyah — Pondok Pesantren",
  dates: dates-helper(start-date: "2020", end-date: "Present"),
)
- Built Playwright automation scripts to batch-enter student data for 3,000+ santri into the EMIS (Education Management Information System), eliminating manual data entry entirely
- Developed Node.js docx generators and OOXML manipulation tools to produce Laporan Pertanggungjawaban (accountability reports) for Pondok management, reducing preparation time from days to minutes
- Designed document automation workflows combining Playwright, OOXML, and custom scripts to streamline administrative reporting across 10+ report types

#work(
  title: "Programming Instructor",
  location: "Banyumas, Indonesia",
  company: "Ma'had Aly Andalusia (Extracurricular)",
  dates: dates-helper(start-date: "Jan 2026", end-date: "Jun 2026"),
)
- Taught programming fundamentals to students with no prior coding experience — 10+ students over 6 months
- Designed curriculum and hands-on exercises from scratch, adapting content for absolute beginners
- Developed teaching materials and guided students through practical coding sessions

== Open Source
- *BNFC* — Reported and fixed extraneous closing bracket in string literal doc generation
- *Noctalia Shell* — Custom plugins for the Noctalia desktop environment

== Certifications
- English Language Certification — BLK, Kementrian Ketenagakerjaan

== Languages
- English (professional working), Indonesian (native), Arabic (academic)
