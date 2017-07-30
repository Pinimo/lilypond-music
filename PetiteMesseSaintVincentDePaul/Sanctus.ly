\version "2.18.2"
\language "english"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

sanctusGlobal = {
  \key e \major
  \time 3/8
  \tempo 4. = 40
}

sanctusMainSolistMusic =  \relative c' {
    \mark \default
    \repeat volta 2 {
      b'4 b8 cs4 b8 b (a gs) fs4. \break
      \mark \default
      e8 fs gs a8 (gs) e
    }
    \alternative {
      { e8 fs4 gs4. }
      { e8 (ds16 cs16) ds8 e4. \break }
    }
    \mark \default
    \repeat volta 2 {
        \cadenzaOn \stemOff b'\breve \cadenzaOff \stemOn
        cs8 cs cs
        b4 (gs8) b4. \break
      \mark \default
        e,8 fs (gs) a8 gs e 
    }
    \alternative {
      { e8 (fs4) gs4. }
      { e8 (ds16 cs16 ds8) e4. }
    }
  }
sanctusMainSolistLyrics = \lyricmode {
    \repeat volta 2 { San -- ctus, San -- ctus, San -- ctus, Dó -- mi -- nus  De -- us }
    \alternative {
      { Sáb -- ba -- oth }
      { Sáb -- ba -- oth }
    }
  }
sanctusVerseOneSolistLyrics = \lyricmode {
    \repeat unfold 17 { \skip 1 }
    \once \override LyricText.self-alignment-X = #-1
    "Pleni sunt cæli et terra" gló -- ri -- a tu -- a.
    Ho -- sán -- na in ex -- cél -- sis.
  }
sanctusVerseTwoSolistLyrics = \lyricmode {
    \repeat unfold 17 { \skip 1 }
    \once \override LyricText.self-alignment-X = #-1
    "Benedíctus qui venit in nómine" Dó _  _ -- mi -- ni.
    Ho -- sán -- na in ex --
    \repeat unfold 2 { \skip 1 }
    cél -- sis.
  }

sanctusMainSopranoMusic = \sanctusMainSolistMusic
%sanctusVerseSopranoMusic =  \sanctusVerseSolistMusic
sanctusMainSopranoLyrics = \sanctusMainSolistLyrics
sanctusVerseOneSopranoLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoSopranoLyrics = \sanctusVerseTwoSolistLyrics

sanctusMainAltoMusic = \relative c' {
    \repeat volta 2 { gs'4 gs8 e4 e8 gs (fs e) fs4. cs8 ds ds cs (e) cs
    }
    \alternative {
      { cs8 b4 b4. }
      { cs8 b4 b4. }
    }
    \repeat volta 2 {
        \cadenzaOn \stemOff gs'\breve \cadenzaOff \stemOn
        a8 a a
        gs4 (e8) fs4. \break
        cs8 ds (ds) cs e cs
    }
    \alternative {
      { cs8 (b4) b4. }
      { cs8 b4 b4. }
    }
  }
sanctusMainAltoLyrics = \sanctusMainSolistLyrics
sanctusVerseOneAltoLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoAltoLyrics = \sanctusVerseTwoSolistLyrics

sanctusTenorMusic = \relative c {
  \repeat volta 2 { e'8 (b) gs a (b) cs e (cs b) ds4. gs,8 a gs fs (gs) a }
    \alternative {
      { fs4 a8 gs4. }
      { fs4 a8 gs4. }
    }
    \repeat volta 2 {
        \cadenzaOn \stemOff d'\breve \cadenzaOff \stemOn
        cs8 cs cs
        ds4 (cs8) ds4. \break
        gs,8 a (gs) fs gs a
    }
    \alternative {
      { fs4 (a8) gs4. }
      { fs4 (a8) gs4. }
    }
  }
sanctusMainTenorLyrics = \sanctusMainSolistLyrics
sanctusVerseOneTenorLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoTenorLyrics = \sanctusVerseTwoSolistLyrics

sanctusMainBasseMusic = \relative c {
    \repeat volta 2 { e4 e8 a,4 a8 gs4. b4. cs8 cs b a (a) cs }
    \alternative {
      { a4 b8 <e \parenthesize e,>4. }
      { a,4 b8 <e \parenthesize e,>4. }
    }
    \repeat volta 2 {
        \cadenzaOn \stemOff <e \parenthesize e,>\breve \cadenzaOff \stemOn
        e8 e e
        gs8 (fs e) b4. \break
        cs8 cs (b) a a cs }
    \alternative {
      { a4 (b8) <e \parenthesize e,>4. }
      { a,4 (b8) <e \parenthesize e,>4. }
    }
  }
sanctusMainBasseLyrics = \sanctusMainSolistLyrics
sanctusVerseOneBasseLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoBasseLyrics = \sanctusVerseTwoSolistLyrics
