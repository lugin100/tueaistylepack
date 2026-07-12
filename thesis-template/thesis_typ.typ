#import "tuebingen_cs_thesis_typ/colortheme_tueai.typ": *
#import "tuebingen_cs_thesis_typ/tuebingen_cs_thesis.typ": makeTueAIfrontmatter, thesis_template

// Optional: Todo notes
#import "@preview/drafting:0.2.2": inline-note, margin-note


// Metadata
#show: thesis_template.with(
  _degree: "master",
  _language: "english",
  _thesistitle: "Deep Learning on Manifolds",
  _thesisauthor: "Gabriele Musterfrau",
  _studentid: "1234567",
  _degreecourse: "Machine Learning",
  _advisors: "Dr. Frank Schneider",
  _examinerone: "Prof. Dr. Philipp Hennig",
  _examinertwo: "Prof. Dr. Matthias Hein",
  _startdate: datetime(day: 1, month: 10, year: 2025),
  _submissiondate: datetime(day: 30, month: 9, year: 2024),
  _abstractenglish: [This is the English abstract. It should provide a concise summary of the thesis, including the problem statement, methods, results, and conclusions.],
  _abstractgerman: [Dies ist die deutsche Zusammenfassung. Sie sollte eine prägnante Zusammenfassung der Arbeit enthalten, einschließlich der Problemstellung, der Methoden, der Ergebnisse und der Schlussfolgerungen.],
  _acknowledgments: [This is the acknowledgments section. It should contain a list of people who have helped you with your thesis, including your advisors, examiners, and other important people.

    If you do _not_ want to include an acknowledgments section, you can simply remove this command here, or leave it empty (actually empty, though, not a whitespace).
  ],
)
#makeTueAIfrontmatter()

// Main content
= Introduction

This is a minimal working example of the thesis template.
The font should be Computer Modern Roman. The text is single-column, with a width of \the\textwidth.

== Section Heading

This heading should be in Computer Modern Sans Serif.

=== Subsection Heading

This is a subsection.

== Colors

This is the color scheme of the AI Center:
- #text("TueAIdark", fill: TueAIdark)
- #text("TueAIgray", fill: TueAIgray)
- #text("TueAIdarkblue", fill: TueAIdarkblue)
- #text("TueAIaccent", fill: TueAIaccent)
- #text("TueAIlightblue", fill: TueAIlightblue)
- #text("TueAIoceanblue", fill: TueAIoceanblue)
- #text("TueAIoceangreen", fill: TueAIoceangreen)
- #text("TueAIspringgreen", fill: TueAIspringgreen)
- #text("TueAIbrightyellow", fill: TueAIbrightyellow)

You can also/additionally use the color scheme of the University of Tübingen. It provides more colors (in particular more dark color variants, which are easier to see, e.g. for thin lines in plots). The two color schemes are designed to not clash (too much) with each other:
- Primary Colors:
  - #text("TUred", fill: TUred)
  - #text("TUgold", fill: TUgold)
  - #text("TUdark", fill: TUdark)
  - #text("TUgray", fill: TUgray)
- Secondary Colors:
  - #text("TUdarkblue", fill: TUdarkblue)
  - #text("TUblue", fill: TUblue)
  - #text("TUlightblue", fill: TUlightblue)
  - #text("TUlightgreen", fill: TUlightgreen)
  - #text("TUgreen", fill: TUgreen)
  - #text("TUdarkgreen", fill: TUdarkgreen)
  - #text("TUocre", fill: TUocre)
  - #text("TUviolet", fill: TUviolet)
  - #text("TUmauve", fill: TUmauve)
  - #text("TUbeige", fill: TUbeige)
  - #text("TUorange", fill: TUorange)
  - #text("TUbrown", fill: TUbrown)

== Tables

Here is an example table.
#figure(
  table(
    columns: (auto, auto, auto),
    align: (left, left, right),
    stroke: none,

    table.hline(stroke: 1pt),
    table.cell(colspan: 2, align: center)[Item], [],
    table.hline(start: 0, end: 2, stroke: 0.5pt),
    [Animal], [Description], [Price (\$)],
    table.hline(stroke: 0.5pt),

    [Gnat], [per gram], [13.65],
    [], [each], [0.01],
    [Gnu], [stuffed], [92.50],
    [Emu], [stuffed], [33.33],
    [Armadillo], [frozen], [8.99],

    table.hline(stroke: 1pt),
  ),
  caption: [A nice table example.],
) <tab_example>


== Figures

#place(
  auto,
  float: true,
  [#figure(
    image("../tueplots-demo/tueplots_example_tue_ai_thesis.pdf"),
    caption: [A univariate Gaussian Process, generated using `tueplots` to match the thesis layout exactly. See `scripts/plot_gp.py.`],
  ) <fig_gp>],
)


== Citations and References

We can cite conference papers #cite(<gatys2016image>, style: "chicago-author-date"), journal papers #cite(<von2008consistency>, style: "chicago-author-date") or books like #cite(<scholkopf2002learning>, style: "chicago-author-date").
Also, we can refer to @tab_example and @fig_gp. A link to an externel document #link("https://tuebingen.ai")[looks like this].
#margin-note[This is a margin todo note.] #inline-note[This is an inline todo note.]



== More Text

#lorem(1500)

#bibliography("./references.bib")
// \bibliography{references}
//
// \end{document}
