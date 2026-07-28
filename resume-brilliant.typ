// Wrapper to compile brilliant-cv with LitFill profile
// Run: typst compile resume-brilliant.typ --input profile=litfill

#let profile = sys.inputs.at("profile", default: "litfill")

#include "briliant-cv-template/brilliant-cv/cv.typ"
