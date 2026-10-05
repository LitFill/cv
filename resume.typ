#set page(paper: "a4", margin: (top: 2cm, bottom: 2cm, left: 2.3cm, right: 2.3cm))
#set text(font: "Libertinus Serif", size: 10.5pt)
#set par(leading: 0.45em)
#set heading(numbering: none)

// Colors
#let accent = rgb("#1B3A5C")
#let muted = rgb("#666")

// Helper: section heading
#let section(title) = {
  v(0.6em)
  block(below: 0.15em, stroke: 0.5pt + accent)[
    #text(weight: "bold", size: 12pt, fill: accent)[#title]
  ]
  v(0.2em)
}

// Helper: bullet list without paragraph spacing
#let cv-bullets(items) = {
  for item in items {
    [\u{2022}  #item\
    ]
  }
}

// ===== CONTENT =====

#align(center)[
  #text(size: 22pt, weight: "bold", fill: accent)[Muhammad Fakhrur Rozi]
  \
  #text(size: 9.5pt, fill: muted)[
    marrazy54\@gmail.com \  +62 851 1130 4115 \
    github.com/LitFill \ linkedin.com/in/muhammad-ar-razzy-b04179208/ \ rozy.my.id \ blog.rozy.my.id \ Central Java, Indonesia
  ]
]

#section[Summary]
Self-taught in computer science during and after an Arabic Literature degree, driven by a fascination with formal languages and type systems. Functional programmer with deep experience in Haskell and Koka, actively learning Scala 3. Passionate about type systems, compilers, language design, category theory, and purely functional design. Seeking a junior role where I can contribute to production FP systems and grow alongside a strong engineering team.

#section[Education]
#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold")[Sarjana Sastra Arab (Arabic Literature)]
    \
    Ma'had Aly Andalusia Banyumas
    \
    #text(size: 9pt, fill: muted)[GPA: 3.65 / 4.0 — Self-taught in CS during and after this degree, driven by fascination with formal languages and type systems]
  ],
  [
    #align(right, text(size: 9.5pt, fill: muted)[2021 -- 2025])
  ],
)

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold")[SMA Islam Andalusia Kebasen]
    \
    Banyumas, Indonesia
  ],
  [
    #align(right, text(size: 9.5pt, fill: muted)[2017 -- 2020])
  ],
)

#section[Skills]

#text(weight: "bold", size: 10pt)[Primary Languages]
#text(size: 9.5pt)[Haskell, Koka, OCaml, Rust, TypeScript/JavaScript]

#v(0.2em)
#text(weight: "bold", size: 10pt)[Familiar With]
#text(size: 9.5pt)[Go, Idris2, Agda, Lean, Common Lisp, Nushell]

#v(0.2em)
#text(weight: "bold", size: 10pt)[Haskell Ecosystem]
#text(size: 9.5pt)[servant, warp, aeson, megaparsec, lens, QuickCheck, hedgehog, streaming, polysemy, hspec, tasty, req, hasql, relude]

#v(0.2em)
#text(weight: "bold", size: 10pt)[Tools]
#text(size: 9.5pt)[Git, Linux (NixOS, Arch), Neovim, Cabal, GHCup, HLS, Stack, Nix, hledger, Node.js, Playwright]

#v(0.2em)
#text(weight: "bold", size: 10pt)[Soft Skills]
#text(size: 9.5pt)[Self-directed learning (15+ languages independently), technical communication, teaching & mentoring]

#section[Projects]

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 10pt)[derive — Koka Derive CLI]
    \
    #text(size: 9pt)[CLI tool eliminating boilerplate by auto-deriving +show+, +eq+, and]
    #text(size: 9pt)[typeclass-like functions in Koka, similar to GHC's +deriving+. Supports]
    #text(size: 9pt)[2 derivation kinds, file I/O, and dry-run mode. Built because Koka]
    #text(size: 9pt)[lacked metaprogramming — solved a real workflow pain point.]
  ],
  [
    #align(right, link("https://github.com/LitFill/derive")[github.com/LitFill/derive])
  ],
)

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 10pt)[sina — Hindley-Milner Type Inference]
    \
    #text(size: 9pt)[Full HM type inference (Algorithm W) implemented from scratch in]
    #text(size: 9pt)[Haskell: parser, AST, constraint-based type checker with let-polymorphism.]
    #text(size: 9pt)[Supports integers, booleans, conditionals, let-bindings, and binary ops.]
  ],
  [
    #align(right, link("https://github.com/LitFill/sina")[github.com/LitFill/sina])
  ],
)

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 10pt)[klens — Value-based Lenses in Koka]
    \
    #text(size: 9pt)[Value-based lenses for Koka: one-shot focused views with +set+,]
    #text(size: 9pt)[effectful +modify+ propagating Koka effects, composition, and]
    #text(size: 9pt)[tuple optics — a design exercising Koka's effect system.]
  ],
  [
    #align(right, link("https://github.com/LitFill/klens")[github.com/LitFill/klens])
  ],
)

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 10pt)[src-todo — TODO Tracker CLI]
    \
    #text(size: 9pt)[Haskell CLI managing TODO comments in source files: register, list,]
    #text(size: 9pt)[and unregister todos with unique UUIDs, updated in place.]
    #text(size: 9pt)[Comment parsing built with Megaparsec.]
  ],
  [
    #align(right, link("https://github.com/LitFill/src-todo")[github.com/LitFill/src-todo])
  ],
)

#section[Experience]

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 10pt)[Secretary / Administrative Automation]
    #text(size: 9.5pt)[Yayasan Al Anwar Al Hisyamiyyah — Pondok Pesantren]
  ],
  [
    #align(right, text(size: 9.5pt, fill: muted)[2020 -- Present])
  ],
)
#cv-bullets((
  "Built Playwright automation scripts to batch-enter student data for 3,000+ santri into the EMIS (Education Management Information System), eliminating manual data entry entirely",
  "Developed Node.js docx generators and OOXML manipulation tools to produce Laporan Pertanggungjawaban (accountability reports) for Pondok management, reducing preparation time from days to minutes",
  "Designed document automation workflows combining Playwright, OOXML, and custom scripts to streamline administrative reporting across 10+ report types",
))

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 10pt)[Programming Instructor]
    #text(size: 9.5pt)[Extracurricular — Ma'had Aly Andalusia Banyumas]
  ],
  [
    #align(right, text(size: 9.5pt, fill: muted)[First half 2026])
  ],
)
#cv-bullets((
  "Taught programming fundamentals to students with no prior coding experience — 10+ students over 6 months",
  "Designed curriculum and hands-on exercises from scratch, adapting content for absolute beginners with no CS background",
  "Developed teaching materials and guided students through practical coding sessions",
))

#section[Open Source Contributions]
#text(size: 9.5pt)[\u{2022}  BNFC (BNF Converter) — Reported and fixed extraneous closing bracket in string literal doc generation]
#text(size: 9.5pt)[\u{2022}  Noctalia Shell — Custom plugins for the Noctalia desktop environment]

#section[Certifications]
#text(size: 9.5pt)[English Language Certification — BLK, Kementrian Ketenagakerjaan (Ministry of Manpower)]

#section[Languages]
#text(size: 9.5pt)[English (professional working), Indonesian (native), Arabic (academic)]
