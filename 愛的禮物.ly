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

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
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
      a:m7 d1*2 g
    }
    
    a:m7 a:m7
    
    {
      g1*2 a:m7 g1*2
      e:m a:m7 d1*2
      g e:m7 g
      e:m7 d1*2 g
    }
    
    r1*2
    
    {
      e2:m a2:m g2 d2
      g
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
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
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
    \tempo 4=160
  }
}
