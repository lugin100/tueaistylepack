#import "colortheme_tueai.typ": *

#let tueitem(color: TueAIaccent) = context {
  let s = (text.size * 4)
  box(
    baseline: 0pt,
    polygon(
      fill: color,
      (0 * s, 0 * s),
      (0.0919 * s, 0.0373 * s),
      (0.0919 * s, 0.1818 * s),
      (0 * s, 0.1606 * s),
    ),
  )
}

#let checkboxlist(body) = {
  set list(marker: box(width: 0.7em, height: 0.7em, stroke: 0.7pt))
  body
}
