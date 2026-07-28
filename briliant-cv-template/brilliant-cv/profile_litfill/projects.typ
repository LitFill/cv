// Imports
#import "@preview/brilliant-cv:4.1.0": cv-entry, cv-section, cv-skill-tag


#cv-section("Projects")

#cv-entry(
  title: [derive — Koka Derive CLI],
  society: [github.com/LitFill/derive],
  date: [],
  location: [],
  description: list(
    [CLI tool eliminating boilerplate by auto-deriving +show+, +eq+, and typeclass-like functions in Koka (2 derivation kinds, file I/O, dry-run mode)],
    [Built because Koka lacked metaprogramming — solved a real workflow pain point for Koka developers],
  ),
  tags: ("Koka", "CLI", "Metaprogramming"),
)

#cv-entry(
  title: [sina — Hindley-Milner Type Inference],
  society: [github.com/LitFill/sina],
  date: [],
  location: [],
  description: list(
    [Full HM type inference (Algorithm W) from scratch in Haskell: parser, AST, constraint-based type checker],
    [Supports integers, booleans, conditionals, let-bindings, and binary ops with let-polymorphism],
  ),
  tags: ("Haskell", "Type Systems", "PLT"),
)

#cv-entry(
  title: [lens — Optics in Koka],
  society: [github.com/LitFill/lens],
  date: [],
  location: [],
  description: list(
    [Port of Haskell's lens library to Koka: van Laarhoven lenses with +view+/+set+/+over+, lens composition (+.:+), and identity lens],
  ),
  tags: ("Koka", "Optics", "FP"),
)

#cv-entry(
  title: [rayt — Ray Tracer],
  society: [github.com/LitFill/rayt],
  date: [],
  location: [],
  description: list(
    [Ray tracer in Haskell generating PPM images with sphere geometry, surface normal rendering, and color output],
  ),
  tags: ("Haskell", "Graphics", "Algorithms"),
)
