\version "2.18.2"

\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  max-systems-per-page = #4
}
% Needed for unmeasured "gregorian like" pieces

\include "book-titling.ily"


blankPage = {
    \pageBreak
    \stopStaff
    \cadenzaOn
    \once \override Score.BarNumber #'break-visibility = #all-invisible
    \once \override Staff.StaffSymbol #'stencil = ##f
    \once \override Staff.Clef #'transparent = ##t
    \bar ""
    \once \override Staff.BarLine #'stencil = ##f
    \once \override Staff.TimeSignature #'stencil = ##f
    \once \override Staff.KeySignature #'stencil = ##f
    \cadenzaOff
    \startStaff
    \pageBreak
  }

\include "PetiteMesseSaintVincentDePaul/Kyrie.ly"
\include "PetiteMesseSaintVincentDePaul/Agnus.ly"

\book {
  \header {
    title = \markup {
      \center-column {
        "Petite messe"
        "Saint Vincent de Paul"
      }
    }
    subtitle = \markup {
      \center-column {
        "Pour soliste et chœur"
        ou
        "chœur seul"
      }
    }
    composer = "Jean Baptiste Favre"
    date = "2017"
    copyright = "Reproduction interdite sans l'accord explicite de l'auteur"
  }
  \bookTitle "Petite messe Saint Vincent de Paul"
  \useRehearsalNumbers ##f


  \pageBreak
  \blankPage
  \bookpart {
    \paper {
      bookTitleMarkup = \markup {
        \fill-line { \fontsize #10 \fromproperty #'header:piece }
      }
    }
    \header {
      piece = "Kyrie"
      tagline = ##f
    }

    \markup { \vspace #2 }
    \markup { "Chaque phrase est chantée une première fois par le soliste," }
    \markup { "    éventuellement accompagné du chœur " \bold "à l'unisson." }
    \markup { "Elle est ensuite reprise en polyphonie, l'assemblée chantant la voix de soliste" }

    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new Staff \with { instrumentName = "Soliste" }
        <<
          \kyrieGlobal \clef treble
          \new Voice = "kyrieSolistVoice" { \kyrieSolistMusic }
          \new Lyrics \lyricsto "kyrieSolistVoice" { \kyrieSolistLyrics }
        >>
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = "Soprano" }
          <<
            \kyrieGlobal \clef treble
            \new Voice = "kyrieSoprano" { \kyrieSopranoMusic }
            \new Lyrics \lyricsto "kyrieSoprano" { \kyrieSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \kyrieGlobal \clef treble
            \new Voice = "kyrieAlto" { \kyrieAltoMusic }
            \new Lyrics \lyricsto "kyrieAlto" { \kyrieAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \kyrieGlobal \clef "treble_8"
            \new Voice = "kyrieTenor" { \kyrieTenorMusic }
            \new Lyrics \lyricsto "kyrieTenor" { \kyrieTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \kyrieGlobal \clef bass
            \new Voice = "kyrieBasse" { \kyrieBasseMusic }
            \new Lyrics \lyricsto "kyrieBasse" { \kyrieBasseLyrics }
          >>
        >>
        %\new PianoStaff <<
        %  \new Staff <<
        %    \clef treble
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \kyrieGlobal \kyrieSopranoMusic >>
        %    << \kyrieGlobal \kyrieAltoMusic >>
        %  >>
        %  \new Staff <<
        %    \clef bass
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \kyrieGlobal \kyrieTenorMusic >>
        %    << \kyrieGlobal \kyrieBasseMusic >>
        %  >>
        %>>
      >>
    }
  }
  %\bookpart {
  %  \paper {
  %    bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
  %  }
  %  \include "PetiteMesseSaintVincentDePaul/Gloria.ly"
  %}
  %\bookpart {
  %  \paper {
  %    bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
  %  }
  %  \include "PetiteMesseSaintVincentDePaul/Sanctus.ly"
  %}
  \bookpart {
    \paper {
      bookTitleMarkup = \markup {
        \fill-line { \fontsize #10 \fromproperty #'header:piece }
      }
    }
    \header {
      piece = "Agnus"
      tagline = ##f
    }

    %\markup { \vspace #2 }
    %\markup { "Chaque phrase est chantée une première fois par le chantre" }
    %\markup { "éventuellement accompagné du chœur " \bold "à l'unisson" }
    %\markup { "puis répétée à 3 voix, l'assemblée chantant avec le chantre" }

    \score {
      \layout{ ragged-last = ##f }
      \midi{}
      \new GrandStaff
      <<
        \new Staff \with { instrumentName = "Soliste" }
        <<
          \agnusGlobal \clef treble
          \new Voice = "agnusSolistVoice" { \agnusSolistMusic }
          \new Lyrics \lyricsto "agnusSolistVoice" { \agnusSolistLyrics }
        >>
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = "Soprano" }
          <<
            \agnusGlobal \clef treble
            \new Voice = "agnusSoprano" { \agnusSopranoMusic }
            \new Lyrics \lyricsto "agnusSoprano" { \agnusSopranoLyrics }
          >>
          \new Staff \with { instrumentName = "Alto" }
          <<
            \agnusGlobal \clef treble
            \new Voice = "agnusAlto" { \agnusAltoMusic }
            \new Lyrics \lyricsto "agnusAlto" { \agnusAltoLyrics }
          >>
          \new Staff \with { instrumentName = "Ténor" }
          <<
            \agnusGlobal \clef "treble_8"
            \new Voice = "agnusTenor" { \agnusTenorMusic }
            \new Lyrics \lyricsto "agnusTenor" { \agnusTenorLyrics }
          >>
          \new Staff \with { instrumentName = "Basse" }
          <<
            \agnusGlobal \clef bass
            \new Voice = "agnusBasse" { \agnusBasseMusic }
            \new Lyrics \lyricsto "agnusBasse" { \agnusBasseLyrics }
          >>
        >>
        %\new PianoStaff <<
        %  \new Staff <<
        %    \clef treble
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \agnusGlobal \agnusSopranoMusic >>
        %    << \agnusGlobal \agnusAltoMusic >>
        %  >>
        %  \new Staff <<
        %    \clef bass
        %    \set Staff.printPartCombineTexts = ##f
        %    \partcombine
        %    << \agnusGlobal \agnusTenorMusic >>
        %    << \agnusGlobal \agnusBasseMusic >>
        %  >>
        %>>
      >>
    }
  }

}
\layout{}
\midi{}