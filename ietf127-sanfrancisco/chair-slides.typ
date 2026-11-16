// PANRG Chair Slides — IETF 127 (San Francisco)
// Compile: typst compile --font-path ../fonts chair-slides.typ chair-slides.pdf

#let panrg-orange = rgb(230, 145, 56) // #E69138
#let link-blue = rgb(17, 85, 204)

#set document(
  title: "PANRG-IETF127-chairs",
  author: ("Brian Trammell", "Jen Linkova"),
)

#set text(
  font: "Lato",
  weight: "regular",
  size: 15pt,
  fill: black,
  lang: "en",
)

// Reusable slide frame matching the PANRG Google Slides master
#let panrg-slide(bg: panrg-orange, rule-color: black, title: none, body) = {
  page(
    width: 10in,
    height: 5.625in,
    margin: 0in,
    fill: bg,
  )[
    // Master decorative rules
    #place(top + left, dx: 0.465in, dy: 0.455in,
      line(length: 0.200in, stroke: 0.5pt + rule-color))
    #place(top + left, dx: 2.710in, dy: 0.455in,
      line(length: 6.828in, stroke: 0.75pt + rule-color))
    #place(top + left, dx: 2.710in, dy: 5.184in,
      line(length: 6.828in, stroke: 0.5pt + rule-color))

    #if title != none {
      place(top + left, dx: 0.958in, dy: 0.24in,
        text(font: "Raleway", weight: "bold", size: 30pt, fill: black, title))
    }

    #body
  ]
}

// Styled hyperlink for the Note Well slide (kept unbroken across lines)
#let nw-link(url, label) = box(link(url, underline(text(fill: link-blue, label))))

// ============================================================================
// Slide 1: Title
// ============================================================================
#panrg-slide(bg: panrg-orange, rule-color: white)[
  #place(top + left, dx: 2.693in, dy: 0.88in)[
    #set par(leading: 0.38em)
    #text(font: "Raleway", weight: "bold", size: 48pt)[
      Path Aware \
      Networking \
      Research Group
    ]
  ]

  #place(top + left, dx: 0in, dy: 4.20in)[
    #box(width: 10in)[
      #set align(center)
      #set par(leading: 0.42em)
      #text(font: "Raleway", weight: "regular", size: 18pt)[
        #strike[Brian Trammell], Jen Linkova, Chairs \
        IETF127, November 2026, San Francisco
      ]
    ]
  ]
]

// ============================================================================
// Slide 2: IRTF Note Well
// ============================================================================
#panrg-slide(bg: white, rule-color: black)[
  #place(top + left, dx: 0.958in, dy: 0.28in,
    text(font: "Raleway", weight: "bold", size: 22pt, "Note Well"))

  #place(top + left, dx: 0.62in, dy: 0.78in)[
    #box(width: 8.85in)[
      #set text(font: "Lato", size: 12.5pt, fill: black)
      #set par(leading: 0.42em)
      #set list(
        indent: 0.12in,
        body-indent: 0.14in,
        spacing: 0.62em,
        marker: ([•], [◦]),
      )

      - *The IRTF follows the IETF Intellectual Property Rights (IPR) disclosure rules*
      - By participating in the IRTF, you agree to follow IRTF processes and policies:
        - If you are aware that any IRTF contribution is covered by patents or patent applications that are owned or controlled by you or your sponsor, you must disclose that fact, or not participate.
        - The IRTF expects that you file such IPR disclosures in a timely manner – in a period measured in days or weeks, not months.
        - The IRTF prefers that the most liberal licensing terms possible are made available for IRTF Stream documents – see #nw-link("https://datatracker.ietf.org/doc/rfc5743/")[RFC 5743]
        - Definitive information is in #nw-link("https://datatracker.ietf.org/doc/rfc5378/")[RFC 5378] (Copyright) and #nw-link("https://datatracker.ietf.org/doc/rfc8179/")[RFC 8179] (Patents, Participation), substituting IRTF for IETF, and at #nw-link("https://irtf.org/policies/ipr")[https://irtf.org/policies/ipr]
      - As a participant in, or attendee to, any IRTF activity you acknowledge that written, audio, video, and photographic records of meetings may be made public.
      - Personal information that you provide to IRTF will be handled in accordance with the Privacy Policy at #nw-link("https://www.ietf.org/privacy-policy/")[https://www.ietf.org/privacy-policy/]
      - As a participant or attendee, you agree to work respectfully with other participants; please contact the ombudsteam (#nw-link("https://www.ietf.org/contact/ombudsteam/")[https://www.ietf.org/contact/ombudsteam/]) if you have questions or concerns about this.
      - See #nw-link("https://datatracker.ietf.org/doc/rfc7154/")[RFC 7154] (Code of Conduct) and #nw-link("https://datatracker.ietf.org/doc/rfc7776/")[RFC 7776] (Anti-Harassment Procedures), which also apply to the IRTF.
    ]
  ]
]

// ============================================================================
// Slide 3: Agenda
// ============================================================================
#panrg-slide(bg: panrg-orange, rule-color: black, title: "Agenda")[
  #place(top + left, dx: 0.958in, dy: 0.80in,
    text(font: "Lato", weight: "bold", size: 9.5pt,
      "Fri 20 Nov 2026 — 14:00-15:30 PST (22:00-23:30 UTC) — San Francisco, Golden Gate 3"))

  #place(top + left, dx: 0.928in, dy: 1.17in)[
    #set text(font: "Lato", weight: "regular", size: 15pt, fill: black)
    #table(
      columns: (1.79in, 2.28in, 4.64in),
      inset: (x: 0.11in, y: 0.13in),
      stroke: 0.5pt + black,
      align: left + top,

      [14:00 (5m)],  [Chairs (#strike[B. Trammell] + \ J. Linkova)], [Welcome, Note Well, Agenda Bash],
      [14:05 (20m)], [T. Rossmann],                         [In-Network Retransmissions for Encrypted Transport Protocols],
      [14:25 (20m)], [T. John],                             [Happy Eyeballs for Path-Aware Networks],
      [14:45 (45m)], [],                                    [Open Mic / AOB],
    )
  ]
]
