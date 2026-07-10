
#let degree = state("degree", "")
#let language = state("language", "")
#let thesistitle = state("thesistitle", "")
#let thesisauthor = state("thesisauthor", "")
#let studentid = state("studentid", "")
#let degreecourse = state("degreecourse", "")
#let advisors = state("advisors", "")
#let examinerone = state("examinerone", "")
#let examinertwo = state("examinertwo", "")
#let startdate = state("startdate", "")
#let submissiondate = state("submissiondate", "")
#let abstractenglish = state("abstractenglish", "")
#let abstractgerman = state("abstractgerman", "")
#let acknowledgments = state("acknowledgments", "")

#let _thesis_label() = context {
  if language.get() == "german" {
    if degree.get() == "master" {
      "Masterarbeit"
    } else {
      "Bachelorarbeit"
    }
  } else {
    if degree.get() == "master" {
      "Master Thesis"
    } else {
      "Bachelor Thesis"
    }
  }
}

