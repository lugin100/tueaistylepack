#import "colortheme_tueai.typ": *
#import "itemize.typ": tueitem
#import "state.typ": *

#import "declarations.typ": declarationofai, declarationofauthorship

#let thesis_template(
  _degree: "master",
  _language: "english",
  _thesistitle: none,
  _thesisauthor: none,
  _studentid: none,
  _degreecourse: none,
  _advisors: none,
  _examinerone: none,
  _examinertwo: none,
  _startdate: none,
  _submissiondate: none,
  _abstractenglish: none,
  _abstractgerman: none,
  _acknowledgments: none,
  body,
) = {
  degree.update(_degree)
  language.update(_language)
  thesistitle.update(_thesistitle)
  thesisauthor.update(_thesisauthor)
  studentid.update(_studentid)
  degreecourse.update(_degreecourse)
  advisors.update(_advisors)
  examinerone.update(_examinerone)
  examinertwo.update(_examinertwo)
  startdate.update(_startdate)
  submissiondate.update(_submissiondate)
  abstractenglish.update(_abstractenglish)
  abstractgerman.update(_abstractgerman)
  acknowledgments.update(_acknowledgments)


  // =============================================================================
  // Styling
  // =============================================================================

  // itemization
  set list(
    marker: (
      [#tueitem(color: TueAIaccent)],
      [#tueitem(color: TueAIlightblue)],
      [#tueitem(color: TueAIoceanblue)],
    ),
    indent: 1.5em,
    body-indent: 0.8em,
  )

  // links
  show link: it => underline(text(fill: TueAIlightblue, it))
  // could also color citations like latex, but this highlights the parenthesis around it too
  // show cite: it => underline(text(fill: TueAIlightblue, it))


  set heading(numbering: "1.1")

  show heading.where(level: 1): it => {
    set text(font: "TeX Gyre Heros", weight: "bold", size: 22pt, fill: TueAIdarkblue)
    v(4em)
    if it.numbering != none [
      Chapter #counter(heading).display(it.numbering)
    ]
    linebreak()
    v(0.4em)
    it.body
    v(0.8em)
  }

  // Section = heading level 2 (run-in style, number + space + title)
  show heading.where(level: 2): it => {
    set text(font: "TeX Gyre Heros", weight: "bold", size: 16pt, fill: TueAIdarkblue)
    v(0.4em)
    if it.numbering != none [
      #counter(heading).display(it.numbering) #h(1em)
    ]
    it.body
  }

  // Subsection = heading level 3
  show heading.where(level: 3): it => {
    v(0.4em)
    set text(font: "TeX Gyre Heros", weight: "bold", size: 12pt, fill: TueAIdarkblue)
    if it.numbering != none [
      #counter(heading).display(it.numbering) #h(1em)
    ]
    it.body
  }
  // -----------------------------------------------------------------------
  // Captions in sans (small)
  // -----------------------------------------------------------------------
  show figure.caption: it => {
    set text(font: "Libertinus Sans", size: 9pt) // \small
    it
  }

  // -----------------------------------------------------------------------
  // Headers and footers
  // -----------------------------------------------------------------------
  set page(
    margin: (left: 2.5cm, right: 2.54cm, top: 2.5cm, bottom: 2.5cm),
    header: context {
      let pg = here().page()
      let chapter-start-pages = query(heading.where()).map(h => h.location().page())

      if chapter-start-pages.contains(pg) or pg < 3 {
        none
      } else {
        set text(font: "New Computer Modern", fill: TueAIdarkblue, size: 9pt)
        grid(
          columns: (1fr, 1fr),
          align(left)[
            // LE: title on even pages · LO: author on odd pages
            #if calc.even(pg) [#thesistitle.get()] else [#thesisauthor.get() ]
          ],
          align(right)[
            // RE: "Master/Bachelor Thesis" on even pages · RO: logo on odd pages
            #if calc.even(pg) [
              #_thesis_label()
            ] else [
              #image("assets/TUEAI_Symbol_RGB.pdf", height: 1em)
            ]
          ],
        )
      }
    },
    footer: context {
      if here().page() < 5 {
        none
      } else {
        align(right)[
          p. #here().page() of #counter(page).final().first()
        ]
      }
    },
  )


  // -----------------------------------------------------------------------
  // Misc Overrides
  // -----------------------------------------------------------------------

  show figure.where(
    kind: table,
  ): set figure.caption(position: top)


  context {
    if language.get() == "german" {
      set text(lang: "de")
      set smartquote(alternative: true)
    } else {
      set text(lang: "en")
    }
  }


  body
}


#let makeTueAIfrontmatter() = context {
  align(center)[
    #v(5cm)
    #text(fill: TueAIdarkblue, weight: "bold", size: 2.6em)[#thesistitle.get()]
    #v(1cm)
    #text(fill: TueAIdark, size: 1.5em)[#_thesis_label() in #degreecourse.get()]
    #v(2cm)
    #text(fill: TueAIaccent, size: 1.5em)[#thesisauthor.get()]
    #v(1fr)
    #image("assets/TUEAI_Logo_stacked-URL-maxi_RGB.pdf", width: 30%)
    #v(1fr)
    #text(fill: TueAIdark, size: 1.2em)[University of Tübingen]
    #v(1cm)
    #text(fill: TueAIdark)[#submissiondate.get().display("[day].[month].[year]")]
  ]

  pagebreak()
  [#text(thesisauthor.get(), TueAIaccent, weight: "bold")]
  [\ ]
  [#text(thesistitle.get(), TueAIdarkblue, weight: "bold")]
  [\ ]
  [#text([#_thesis_label()], TueAIdark)]
  [\ ]
  [#text([University of Tübingen], TueAIdark)]
  [\ ]
  [#text([Tübingen AI Center], TueAIdark)]

  v(1fr)
  let styled-table(..rows) = {
    show grid.cell.where(x: 0): set text(TueAIdarkblue)
    show grid.cell.where(x: 1): set text(TueAIaccent)
    grid(
      columns: (auto, 1fr),
      gutter: 0.6em,
      column-gutter: 1.2em,
      align: (right, left),
      ..rows
    )
  }
  styled-table[
    *Matriculation Number:*
  ][
    #studentid.get()
  ][
    *Degree Course:*
  ][
    #degreecourse.get()
  ][
    *Advisors:*
  ][
    #advisors.get()
  ][
    *First Examiner:*
  ][
    #examinerone.get()
  ][
    *Second Examiner:*
  ][
    #examinertwo.get()
  ][
    *Start Date:*
  ][
    #startdate.get().display("[month repr:long] [day], [year]")
  ][
    *Submission Date:*
  ][
    #submissiondate.get().display("[day].[month].[year]")
  ]

  declarationofauthorship()

  declarationofai()

  align(center)[#text([Abstract], weight: "bold", fill: TUdark, 14pt)]
  abstractenglish.get()

  v(1fr)
  align(center)[#text([Zusammenfassung], weight: "bold", fill: TUdark, 14pt)]
  abstractgerman.get()
  v(1fr)

  pagebreak()
  if acknowledgments.get() != none {
    align(center)[
      #text(
        [#if language.get() == "german" { "Danksagung" } else { "Acknowledgments" }],
        weight: "bold",
        fill: TUdark,
      )
      )
    ]
    acknowledgments.get()
    pagebreak()
  }

  text(TueAIaccent, outline())
  pagebreak()
}
