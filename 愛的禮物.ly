\version "2.18.2"

\header {
  title = "愛的禮物"
  subtitle = "The Gift of Love"
  instrument = "For Unison or Two-part Choir"
  composer = "American Folk Tune"
  arranger = "Arr. by Hal Hopson"
  poet = "汪美譯"
  piece = "Based on I Corinthians 13"
  copyright = "Copyright 1972 in Folk Songs for Weddings by Hope Publishing Company"
}

global = {
  \key g \major
  \time 4/4
}

unisonVoice = \relative c' {
  \global
  \dynamicUp
  \set noChordSymbol = ""
  
  R1*3

  {
    r4 d g a b1~b4 a g e d1
    r4 d g fis g1~g4 a b c8(b8) a1
    r4 a b c d1~d4 c b a8(g8) b1
    r4 a g e d1 r4 d d e8(g8) g1~g2 r2
  }
  
  R1*3
  
  {
    r4 d g a b1~b4 a g e d1
    r4 d g fis g1~g4 a b c8(b8) a1
    r4 a b c d1~d4 c b a8(g8) b1
    r4 a g e d1~d4 d d e8(g8) g1
  }
}

verseUnisonVoice = \lyricmode {
  <<
    {
      Though I may speak with brav- est fire,
      and have the gift to all in- spire,
      And have not love; my words are vain,
      as sound- ing brass, and hope- less gain.
    }
    \new Lyrics {
      \set associatedVoice = "singleVoice"
      我 若 能 說 萬 人 方 言，
      我 又 會 唱 天 使 之 歌，
      在 我 內 心， 卻 沒 有 愛，
      話 語 歌 聲， 都 屬 虛 空。
    }
  >>
  <<
    {
      Though I may give all I pos- sess,
      and striv- ing so my love pro- fess,
      But not be giv'n by love with- in,
      the prof- it soon turns strange- ly thin.
    }
    \new Lyrics {
      \set associatedVoice = "singleVoice"
      傾 我 所 有 賙 濟 貧 窮，
      焚 燒 己 身， 在 所 不 惜，
      在 我 內 心 卻 沒 有 愛，
      雖 捨 己 身 與 我 無 益。
    }
  >>
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  
  R1 * 41
  
  {
    r4 d g a b1~b4 a g e d1
    r4 d g f g1~g4 a b c8(b8) a1
  }
}

verseSopranoVoice = \lyricmode {
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  R1*48
  d1 d d d
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  
}

right = \relative c' {
  \global
  % Music follows here.
  % P1
  r4 r8 d <a' d>4 <d, a'>
  r4 r8 c <g' c>4 <c, g'>
  r4 r8 c <e a>4 <a, d>
  d4. d8 <b g'>4 <d a'>
  <g b>4. d8 g fis e d
  c4. e8 <d g>4 c
  b4. d8 <b g'>4 <d a'>
  <g b>4. d8 <g b>4 <fis a>
  <e g>4. b8 g' fis e d
  c4. d8 e2
  
  % P2
  fis1
  r4 a <fis b> <g c>
  <b d>4. d,8 g a b a
  << {
    b8 c b a b a g e
  } \\ {
    e2 c
  } >>
  d4. d8 g fis e d
  c1
  d4 s s2
  d2. c4
  r4 r8 d b' a g fis
  g4. b,8 g' fis e d
  << {
    e2 r2
  } \\ {
    e8 d c b d c b a
  } >>
  d1
  r4 r8 d g4 d
  << { d2 } \\ { a4 b } >> <b g'>4 <d a'>
  <g b>1~
  q4 << { d'2 c4 } \\ { a2. } >>

  % P3
  << {
    c4 b a g
    r4 d g fis
    r4 g c b
    c2 b4 g
    g4 fis e d
    c2 b4 a
    d4 c d g
    b4 a2 g4
    a4 g fis e8 d
    d4 c e g
    g4 fis e d
    d2. c4
  } \\ {
    g'2 b,
    d1
    g1~
    g2 e
    d2 a
    g1
    c1
    c2 e
    <b d>2 b
    a2 c
    d1
    a2 g
  } >>
  r4 r8 d' <a' d>4 <d, a'>
  r4 r8 c <g' c>4 <c, g'>
  r4 r8 c <e a>4 <a, d>

  % P4
  b4. d8 <b g'>4 <d a'>
  <g b>4. d8 g fis e d
  c4. e8 <d g>4 c
  c4 b <b g'> <d a'>
  <g b>4. d8 <g b>4 <fis a>
  <e g>4. b8 g' fis e d
  c4. e8 g4 e
  fis1
  r4 a <fis b> <g c>
  <b d>4. d,8 g a b c
  << { b4 a2 g4 } \\ { c,2 e } >>
  d4. g8 <d a'>4 <g b>

  % P5
  << {
    d4 c e g
    g4 fis e d
    d2. c4
  } \\ {
    a2 c
    d2 e4 d
    \change Staff = "left" \stemUp a8 b a g \stemNeutral
    \change Staff = "right" g2
  } >>
  b4. d8 <a' d>4 <d, a'>
  r4 r8 d g4 <d a'>
  <g b>2 q4 <d a'>4
  << {
    g4 e b' a~
    a4 g2 fis4
  } \\ {
    b,2 c
    b a
  } \\ {
    s1 d1
  } >>
  g4 r8 d b' a g fis
  g4. d8 g fis e d
  << { e2 r2 } \\ { e8 d c b d c b a } >>
  b1\fermata
}

left-g-major-bar = \relative c {
  \set tieWaitForNote = ##t
  g8~ d'~ b'4~ <g, d' b'>2
}

left = \relative c {
  \global
  % Music follows here.
  \set tieWaitForNote = ##t
  % P1
  \left-g-major-bar
  g8~ e'~ a4~ <g, e' a>2
  a8~ e'~ a4~ <a, e' a>2
  \left-g-major-bar
  \left-g-major-bar
  a8~ e'~ a4~ <a, e' a>2
  \left-g-major-bar
  \left-g-major-bar
  e8~ b'~ g'4~ <e, b' g'>2
  << {
    s4 a'4 b c8 b
  } \\ {
    \set tieWaitForNote = ##t
    \stemUp
    a,8~ e'~ s4
    \stemDown
    <a, e'>2
  } >>
  \stemNeutral

  % P2
  << {
    a'4. b8 a g a b
    a8 g fis e d c b a
  } \\ {
    d,8 a' d2.~
    d2 r2
  } >>
  \left-g-major-bar
  <c g'>2 <a e'>
  \left-g-major-bar
  << {
    g'8 a a g g b a g~
    g8 a \change Staff = "right" d a'~ a d, \change Staff = "left" a g
    g4 fis e2
  } \\ {
    <a, e'>1
    <d, d'>1
    <d a'>2 <c g'>
  } >>
  \left-g-major-bar
  e8~ b'~ g'4~ <e, b' g'>2
  << { r2 e' fis4 e g fis } \\ { c,1 d } >>
  \left-g-major-bar
  <g d'>1~
  q4 d' g <d a'>
  <g d'>2 <a e'>

  % P3
  <g d'>2 <g, d'>
  <b fis'>1
  <e b'>1
  << { e'2 c a fis } \\ { a1 d, } >>
  <a e'>1
  <g e'>1
  << {
    e'2 b'4 c
    r2 d,
    e2 g4 e
    a2. g4~
    g4 fis
  } \\ {
    a,1
    g1
    a1
    d1
    d2
  } >> <c e>2
  \left-g-major-bar
  g8~ e'~ a4~ <g, e' a>2
  a8~ e'~ a4~ <a, e' a>2

  % P4
  \left-g-major-bar
  \left-g-major-bar
  a8~ e'~ a4~ <a, e' a>2
  g8~ d'~ g4~ <g, d' g>2
  \left-g-major-bar
  e8~ b'~ g'4~ <e, b' g'>2
  << {
    s4 a'4 b c8 b
    a4. b8 a g a b
    a8 g fis e d c b a
  } \\ {
    \set tieWaitForNote = ##t
    \stemUp
    a8~ e'~ s4
    \stemDown
    <a, e'>2
    d,8 a' d2.~
    d2 r2
  } >>
  \stemNeutral
  \left-g-major-bar
  << { e2 b'4 c } \\ { a,1 } >>
  \left-g-major-bar

  % P5
  << {
    e'2 g4 e
    a2 fis
  } \\ {
    a,1
    d1
    d2
  } >>
  <c e>2
  \left-g-major-bar
  \left-g-major-bar
  g8~ d'~ b'4~ <g, d' b'>4 fis'
  e8 e, b' e <a, e'>2
  g2 d'
  \left-g-major-bar
  e,8~ b'~ g'4~ <e, b' g'>2
  << { r2 e' } \\ { c,1 } >>
  <g' d'>1\fermata


}

chordNames = {
  \chordmode {
    \global
    \set noChordSymbol = ""
    
    g a:m7 a:m7
    
    {
      g g a:m7 g
      g e:m a:m7 d
      a:m7 g a:m7 g
      a:m7 d d g e:m
    }
    
    c d g
    
    {
      g g a:m7 g
      b:m e:m a:m d
      a:m g a:m7 g
      a:m7 d1*2 g1
    }
    
    a:m7 a:m7
    
    {
      g1*2 a1:m7 g1*2
      e1:m a:m7 d1*2
      g1 e:m7 g
      e:m7 d1*2 g1
    }
    
    s1*2
    
    {
      e2:m a2:m g2 d2
      g1 e:m c g
    }
  }
}

unisonVoicePart = \new Staff \with {
  instrumentName = "Unison"
  midiInstrument = "choir aahs"
} { \unisonVoice }
\addlyrics { \verseUnisonVoice }

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } { \right \bar "|." }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left \bar "|." }
>>

\score {
  <<
    \new ChordNames { \chordNames }
    \unisonVoicePart
    \sopranoVoicePart
    \altoVoicePart
    \pianoPart
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
    }
  }
  \midi {
    \tempo 4=100
    \context {
      \ChordNameVoice \remove Note_performer
    }
  }
}
