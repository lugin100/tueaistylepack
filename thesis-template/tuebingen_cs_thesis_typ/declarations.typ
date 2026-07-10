#import "colortheme_tueai.typ": *
#import "itemize.typ": checkboxlist
#import "state.typ": *

#let declaration_title(body) = {
  heading(body, level: 2, numbering: none, outlined: false)
}
#let declaration_subtitle(body) = {
  heading(body, level: 3, numbering: none, outlined: false)
}

#let declarationofauthorship() = context {
  pagebreak()

  if language.get() == "german" {
    declaration_title([Selbständigkeitserklärung])
    parbreak()
    [Hiermit versichere ich, dass ich die vorliegende ]
    [#_thesis_label()]
    [ selbständig und nur mit den angegebenen Hilfsmitteln angefertigt habe und dass alle Stellen, die dem Wortlaut oder dem Sinne nach anderen Werken entnommen sind, durch Angaben von Quellen als Entlehnung kenntlich gemacht worden sind. Diese ]
    [#_thesis_label()]
    [ wurde in gleicher oder ähnlicher Form in keinem anderen Studiengang als Prüfungsleistung vorgelegt.]

    v(2cm)
    grid(columns: (1fr, 1fr), gutter: 2em)[#line(length: 100%)][#line(length: 100%)][Ort, Datum][Unterschrift]
  } else {
    declaration_title([Statement of Authorship])
    parbreak()
    [I hereby declare that I have produced the present ]
    [#_thesis_label()]
    [ independently and without use of other than the included aids. All texts that are taken from other works, either verbatim or in substance, have been identified as such by citing the source. This ]
    [#_thesis_label()]
    [ has not been submitted in the same or similar form as an examination in any other course of study.]

    v(2cm)
    grid(columns: (1fr, 1fr), gutter: 2em)[#line(length: 100%)][#line(length: 100%)][Place, Date][Signature]
  }

  v(1fr)
  image("assets/TUEAI_Toolkit_Pattern.pdf", width: 100%)
}

#let declarationofai() = context {
  pagebreak()
  if language.get() == "german" {
    declaration_title(Erklärung)
    parbreak()
    [Laut Beschlüssen der Prüfungsausschüsse Bioinformatik, Informatik, Informatik Lehramt, Kognitionswissenschaft, Machine Learning, Medieninformatik und Medizininformatik der Universität Tübingen vom 05.02.2025. Gültig für Abschlussarbeiten (B.Sc./M.Sc./B.Ed./M.Ed.) in den zugehörigen Fächern. Bei Studienarbeiten und Hausarbeiten bitte nach Maßgabe des/der jeweiligen Prüfers/Prüferin.]

    parbreak()
    declaration_subtitle([1. Allgemeine Erklärungen])
    [Hiermit erkläre ich:]
    [
      - Ich habe die vorgelegte Arbeit selbständig verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel benutzt.
      - Ich habe alle wörtlich oder sinngemäß aus anderen Werken übernommenen Aussagen als solche gekennzeichnet.
      - Die Arbeit war weder vollständig noch in wesentlichen Teilen Gegenstand eines anderen Prüfungsverfahrens.
      - Falls ich ein elektronisches Exemplar und eines oder mehrere gedruckte und gebundene Exemplare eingereicht habe (z.B., weil der/die Prüfer/in(nen) dies wünschen): Das elektronisch eingereichte Exemplar stimmt exakt mit dem bzw. den von mir eingereichten gedruckten und gebundenen Exemplar(en) überein.
    ]

    decaration_subtitle([2. Erklärung bezüglich Veröffentlichungen])
    [Eine Veröffentlichung ist häufig ein Qualitätsmerkmal (z.B. bei Veröffentlichung in Fachzeitschrift, Konferenz, Preprint, etc.). Sie muss aber korrekt angegeben werden. Bitte kreuzen Sie die für Ihre Arbeit zutreffende Variante an:]
    checkboxlist[
      - Die Arbeit wurde bisher weder vollständig noch in Teilen veröffentlicht.
      - Die Arbeit wurde in Teilen oder vollständig schon veröffentlicht. Hierfür findet sich im Anhang eine vollständige Tabelle mit bibliographischen Angaben.
    ]

    declaration_subtitle([3. Nutzung von Methoden der künstlichen Intelligenz (KI)])
    [Die Nutzung von KI kann sinnvoll sein. Sie muss aber korrekt angegeben werden und kann die Schwerpunkte bei der Bewertung der Arbeit beeinflussen. Bitte kreuzen Sie alle für Ihre Arbeit zutreffenden Varianten an und beachten Sie, dass die Varianten 3.4 - 3.6 eine vorherige Absprache mit dem/der Betreuer/in voraussetzen:]
    checkboxlist[
      - 3.1. Keine Nutzung: Ich habe zur Erstellung meiner Arbeit keine KI benutzt.
      - 3.2. Korrektur Rechtschreibung & Grammatik: Ich habe KI für Korrekturen der Rechtschreibung und Grammatik genutzt, ohne dass es dabei zu inhaltlich relevanter Textgeneration oder Übersetzungen kam. Das heißt, ich habe von mir verfasste Texte in derselben Sprache korrigieren lassen. Es handelt sich um rein sprachliche Korrekturen, sodass die von mir ursprünglich intendierte Bedeutung nicht wesentlich verändert oder erweitert wurde. Im Zweifelsfall habe ich mich mit meinem/r Betreuer/in besprochen. Alle genutzten Programme mit Versionsnummer sind im Anhang meiner Arbeit in einer Tabelle aufgelistet.
      - 3.3. Unterstützung bei der Softwareentwicklung: Ich habe KI als Unterstützung beim Schreiben von Code in der Softwareentwicklung genutzt. Es handelt sich hierbei lediglich um Unterstützung und nicht um die automatische Generierung von größeren Programm-Teilen. Im Zweifelsfall habe ich mich mit meinem/r Betreuer/in besprochen. Alle genutzten Programme mit Versionsnummer sind im Anhang meiner Arbeit in einer Tabelle aufgelistet.
      - 3.4. Übersetzung: Ich habe nach vorheriger Absprache und mit Erlaubnis meines/r Betreuer/in KI zur Übersetzung von mir in einer anderen Sprache geschriebenen Texte genutzt. Jede derartige Übersetzung ist im laufenden Text gekennzeichnet und der Anhang meiner Arbeit enthält eine Tabelle mit einem vollständigen Nachweis aller übersetzten Textstellen und der verwendeten Programme mit Versionsnummer.
      - 3.5. Code-Generierung: Ich habe nach vorheriger Absprache und mit Erlaubnis meines/r Betreuer/in KI zur Erzeugung von Code in der Softwareentwicklung genutzt. Der Anhang meiner Arbeit enthält eine Tabelle mit einem vollständigen Nachweis aller derartigen Nutzungen, der verwendeten Programme mit Versionsnummer und der verwendeten Prompts.
      - 3.6. Text-Generierung: Ich habe nach vorheriger Absprache und mit Erlaubnis meines/r Betreuer/in KI zur Erzeugung von Text in meiner Arbeit genutzt. Jede derartige Verwendung von KI ist im laufenden Text gekennzeichnet und der Anhang meiner Arbeit enthält eine Tabelle mit einem vollständigen Nachweis aller derartigen Nutzungen, der verwendeten Programme mit Versionsnummer und der verwendeten Prompts.
    ]

    declaration_subtitle([4. Abschluss und Unterschrift(en)])
    [Falls ich in irgendeiner Form KI genutzt haben (siehe oben), dann erkläre ich: Mir ist bewusst, dass ich die Verantwortung trage, falls es durch die Verwendung von KI zu fehlerhaften Inhalten, zu Verstößen gegen das Datenschutzrecht, Urheberrecht oder zu wissenschaftlichem Fehlverhalten (z.B. Plagiaten) kommt.]

    declaration_subtitle([5. Abschluss und Unterschrift(en)])
    [Mir ist bekannt, dass ein Verstoß gegen diese Erklärung prüfungsrechtliche Konsequenzen haben und insbesondere dazu führen kann, dass die Prüfungsleistung mit „nicht ausreichend“ bzw. die Studienleistung mit „nicht bestanden“ bewertet wird und bei mehrfachem oder schwerwiegendem Täuschungsversuch eine Exmatrikulation erfolgen bzw. ein Verfahren zur Entziehung eines eventuell verliehenen akademischen Titels eingeleitet werden kann.]

    v(1.5cm)
    grid(columns: (
        1fr,
        1fr,
        1fr,
      ), gutter: 1.5em)[#line(length: 100%)][#line(length: 100%)][#line(
      length: 100%,
    )][Vorname, Nachname][Ort, Datum][Unterschrift]

    v(1cm)
    [Die Punkte 3.4 - 3.6 erfordern eine Zustimmung des/r Betreuer/in. Sollten Sie einen dieser Punkte angekreuzt haben, dann sollte der/die Betreuer/in bitte hier unterschreiben: Ich habe der oben genannten Nutzung von KI zur Erstellung der Arbeit zugestimmt.]

    v(1.5cm)
    grid(columns: (
        1fr,
        1fr,
        1fr,
      ), gutter: 1.5em)[#line(length: 100%)][#line(length: 100%)][#line(
      length: 100%,
    )][Vorname, Nachname][Ort, Datum][Unterschrift]
    [Betreuer/in]
  } else {
    declaration_title([Declaration])
    parbreak()
    [According to the resolutions of the examination boards for Bioinformatics, Computer Science, Computer Science Education, Cognitive Science, Machine Learning, Media Informatics, and Medical Informatics of the University of Tübingen dated 05.02.2025. Valid for theses (B.Sc./M.Sc./B.Ed./M.Ed.) in the corresponding subjects. For seminar papers and term papers, please follow the instructions of the respective examiner.]

    parbreak()
    declaration_subtitle([1. General Declarations])
    [I hereby declare:]
    [
      - I have written the submitted work independently and have not used any sources or aids other than those indicated.
      - I have identified all statements taken verbatim or in substance from other works as such.
      - The work has not been the subject of another examination procedure, either in full or in essential parts.
      - If I have submitted an electronic copy and one or more printed and bound copies (e.g., because the examiner(s) request this): The electronically submitted copy corresponds exactly to the printed and bound copy/copies submitted by me.
    ]

    declaration_subtitle([2. Declaration regarding Publications])
    [A publication is often a quality feature (e.g., publication in a journal, conference, preprint, etc.). However, it must be correctly indicated. Please check the option applicable to your work:]
    checkboxlist[
      - The work has not been published either in full or in part.
      - The work has already been published in part or in full. A complete table with bibliographic details can be found in the appendix.
    ]

    declaration_subtitle([3. Use of Artificial Intelligence Methods (AI, e.g., chatGPT, DeepL, etc.)])
    [The use of AI can be useful. However, it must be correctly indicated and can influence the focus of the evaluation of the work. Please check all options applicable to your work and note that options 3.4 - 3.6 require prior consultation with the supervisor:]
    checkboxlist[
      - *3.1. No use:* I have not used AI to create my work.
      - *3.2. Spelling & Grammar Correction:* I have used AI for spelling and grammar corrections without resulting in content-relevant text generation or translations. This means I have had texts written by me corrected in the same language. These are purely linguistic corrections, so that the meaning originally intended by me has not been significantly changed or extended. In case of doubt, I have consulted with my supervisor. All programs used with version numbers are listed in a table in the appendix of my work.
      - *3.3. Support in Software Development:* I have used AI as support for writing code in software development. This involves only support and not the automatic generation of larger program parts. In case of doubt, I have consulted with my supervisor. All programs used with version numbers are listed in a table in the appendix of my work.
      - *3.4. Translation:* After prior consultation and with the permission of my supervisor, I have used AI to translate texts written by me in another language. Each such translation is marked in the running text, and the appendix of my work contains a table with a complete proof of all translated text passages and the programs used with version numbers.
      - *3.5. Code Generation:* After prior consultation and with the permission of my supervisor, I have used AI to generate code in software development. The appendix of my work contains a table with a complete proof of all such uses, the programs used with version numbers, and the prompts used.
      - *3.6. Text Generation:* After prior consultation and with the permission of my supervisor, I have used AI to generate text in my work. Each such use of AI is marked in the running text, and the appendix of my work contains a table with a complete proof of all such uses, the programs used with version numbers, and the prompts used.
    ]

    declaration_subtitle([4. Conclusion and Signature(s)])
    [If I have used AI in any form (see above), I declare: I am aware that I bear the responsibility if the use of AI leads to incorrect content, violations of data protection law, copyright law, or scientific misconduct (e.g., plagiarism).]

    declaration_subtitle([5. Conclusion and Signature(s)])
    [I am aware that a violation of this declaration can have examination law consequences and, in particular, can lead to the examination performance being evaluated as "insufficient" or the course achievement as "failed," and in the case of repeated or serious attempts at deception, exmatriculation may occur or a procedure for the withdrawal of any academic title awarded may be initiated.]

    v(1.5cm)
    grid(
      align: (left, right, right),
      columns: (
        1fr,
        1fr,
        1fr,
      ), gutter: 0.5em
    )[#line(length: 100%)][#line(length: 100%)][#line(
      length: 100%,
    )][First Name, Last Name][Place, Date][Signature]
    [*Student*]

    v(1cm)
    [Items 3.4 - 3.6 require the approval of the supervisor. If you have checked one of these items, the supervisor should please sign here: I have approved the above-mentioned use of AI for the creation of the work.]

    v(1.5cm)
    grid(
      align: (left, right, right),
      columns: (
        1fr,
        1fr,
        1fr,
      ), gutter: 0.5em
    )[#line(length: 100%)][#line(length: 100%)][#line(
      length: 100%,
    )][First Name, Last Name][Place, Date][Signature]
    [*Supervisor*]
  }

  pagebreak()
}


