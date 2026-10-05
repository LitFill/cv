// Imports
#import "@preview/brilliant-cv:4.1.0": cv-entry, cv-section, cv-skill-tag

#cv-section("Projects")

#cv-entry(
  title: [derive — Koka Derive CLI],
  society: [github.com/LitFill/derive],
  date: [],
  location: [],
  description: list(
    [CLI tool eliminating boilerplate by auto-deriving *show*, *eq*, and typeclass-like functions in Koka (2 derivation kinds, file I/O, dry-run mode)],
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
  title: [klens — Value-based Lenses in Koka],
  society: [github.com/LitFill/klens],
  date: [],
  location: [],
  description: list(
    [Value-based lenses for Koka: one-shot focused views with *set*, effectful *modify* propagating Koka effects, and composition],
    [Tuple optics and identity lens — a design exercising Koka's effect system],
  ),
  tags: ("Koka", "Optics", "Effects"),
)

#cv-entry(
  title: [src-todo — TODO Tracker CLI],
  society: [github.com/LitFill/src-todo],
  date: [],
  location: [],
  description: list(
    [Haskell CLI managing TODO comments in source files: register, list, and unregister todos with unique UUIDs],
    [In-place file updates; comment parsing built with Megaparsec],
  ),
  tags: ("Haskell", "CLI", "Megaparsec"),
)
