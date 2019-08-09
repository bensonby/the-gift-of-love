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
    r4^"All voices in unison"\mp d g a b1~b4 a g e d1
    r4 d g fis g1~g4 a b c8(b8) a1
    r4 a\< b c\! d1\mf~d4 c b a8(g8) b1
    r4 a\> g e d1 r4\! d\mp d^"holding back" e8(g8) g1~g2^"a tempo" r2
  }

  R1*3

  {
    r4 d\mf g a b1~b4 a g e d1
    r4 d g fis g1~g4 a b c8(b8) a1
    r4 a b c d1~d4 c b a8(g8) b1
    r4 a g e d1~d4 d\>^"holding back" d e8(g8)\! g1\p^"a tempo"
  }

  R1*2
}

unisonVoiceLyrics = \lyricmode {
  <<
    \new Lyrics = "en" {
      Though I may speak __ with brav -- est fire,
      and have the gift __ to all in -- spire,
      And have not love; __ my words are __ vain,
      as sound -- ing brass, and hope -- less __ gain. __

      Though I may give all I pos- sess,
      and striv- ing so my love pro- fess,
      But not be giv'n by love with- in,
      the prof- it soon turns strange- ly thin.
    }
    \new Lyrics \with { alignBelowContext = #"en" } {
      我 若 能 說 萬 人 方 言，
      我 又 會 唱 天 使 之 歌，
      在 我 內 心， 卻 沒 有 愛，
      話 語 歌 聲， 都 屬 虛 空。

      傾 我 所 有 賙 濟 貧 窮，
      焚 燒 己 身 在 所 不 惜，
      在 我 內 心 卻 沒 有 愛，
      雖 捨 己 身 與 我 無 益。
    }
  >>
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp

  R1*41

  {
    r4^"Part 1 (melody)" d\mf g a b1~b4 a g e d1
    r4 d g fis g1~g4 a b c8(b8) a1
    r4 a\f	 b c d1~d4 c b a8(g8) b1
    r4 a g e d1~d4 d d^"holding back" e8(g8) g1^"a tempo"
  }
  {
    r4 d(g a) b2. a4 g a8(b8 c2) b2\>^"rit." a\! g1\mp\>(g)(g)(g\fermata\pp)\!
  }
}

sopranoVoiceLyrics = \lyricmode {
  <<
    \new Lyrics = "en" {
      Come, spir -- it come, __ our hearts con -- trol,
      Our spir -- its long __ to be made __ whole.
      Let in -- ward love __ guide ev -- 'ry __ deed.
      By this we wor -- ship and are __ freed.

      A -- men, A -- men, A -- men, A -- men.
    }
    \new Lyrics \with { alignBelowContext = #"en" } {
      懇 求 聖 靈， 降 臨 我 心。
      感 化 訓 誨 使 我 完 全。
      心 中 有 愛 導 我 言 行。
      得 真 自 由， 讚 美 敬 拜。

      阿 們， 阿 們， 阿 們， 阿 們。
    }
  >>
}

altoVoice = \relative c' {
  \global
  \dynamicUp

  R1*41

  {
    r1
    r4^"Part 2 or instrument" d\mf g a8(b8) c1~c4 b a g d1
    r4 g a b c2(g4) e fis g a
    d,4\f d'2 d,4 d b' g a b e,2.
    e4 d g a b e,2.
    g4 g fis e d a'2(g4^"holding back") c b^"a tempo"(g2.)
  }
  {
    r1
    r4 d (g a) b2. a4(~a4\>^"rit." g2 fis4)\! g1\mp\>(g)(g)(g\fermata\pp)\!
  }
}

altoVoiceLyrics = \lyricmode {
  <<
    \new Lyrics = "en" {
      Come, spir -- it come, __ our hearts con -- trol.
      Our spir -- its long __ to be made whole.
      O come, spir -- it, come,
      Let in -- ward love, Let love guide ev -- 'ry deed.
      By this we wor -- ship, we __ are freed. __

      A -- men, A -- men.
    }
    \new Lyrics \with { alignBelowContext = #"en" } {
      懇 求 聖 靈， 降 臨 我 心，
      感 化 訓 誨 使 我 完 全。
      懇 求 聖 靈， 求 降 臨 我 心， 使 愛 導 我 言 行。
      得 真 自 由， 讚 美 敬 拜。

      阿 們， 阿 們。
    }
  >>
}

right = \relative c' {
  \global

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
  g4.^"a tempo" b,8 g' fis e d
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
    d2.\tempo "holding back" c4
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
  r4\tempo "a tempo" r8 d' <a' d>4 <d, a'>
  r4 r8 c <g' c>4 <c, g'>
  r4 r8 c <e a>4 <a, d>
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
  << {
    d4 c e g
    g4 fis e d
    d2. c4
  } \\ {
    a2 c
    d2 e4 d
    \change Staff = "left" \stemUp a8 b a^"holding back" g \stemNeutral
    \change Staff = "right" g2
  } >>
  b4.^"a tempo" d8 <a' d>4 <d, a'>
  r4 r8 d g4 <d a'>
  <g b>2 q4 <d a'>4
  << {
    g4 e b' a~
    a4^"rit." g2 fis4
  } \\ {
    b,2 c
    b a
  } \\ {
    s1 d1
  } >>
  g4^"a tempo" r8 d b' a g fis
  g4. d8 g fis e d
  << { e2 r2 } \\ { e8 d c b d c^"rit." b a } >>
  b1\fermata
}

left-g-major-bar = \relative c {
  \set tieWaitForNote = ##t
  g8~ d'~ \stemUp b'4~ \stemNeutral <g, d' b'>2
}

left = \relative c {
  \global
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
    g8 a \change Staff = "right" \stemDown d a'~ a d, \change Staff = "left" \stemUp a g
    g4 fis e2 ^"holding back"
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

holding-back = \markup { "holding back" }
dynamics = {
  s1\p s1*10 s4 s2\< s4\! s1\mf s1*4 s1\mp
  s1*19 s2.\> s4\! s1\p s1*2
  s1\mf s1*7
  s1\f s1*6
  s2 s4\> s4\! s1*3 s2.\> s4\! s4.\mp s8\> s2 s1 s2. s4\! s1\pp

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

\score {
  <<
    \new ChoirStaff <<
      % Chord
      \new ChordNames { \chordNames }

      % Unison
      \new Staff \with {
        instrumentName = "Unison"
        midiInstrument = "choir aahs"
      } {
        \new Voice = "unison" {
          \unisonVoice
        }
      }
      \new Lyrics = "unison"
      \context Lyrics = "unison" {
        \lyricsto "unison" {
          \unisonVoiceLyrics
        }
      }

      % Alto
      \new Staff \with {
        instrumentName = "Alto"
        midiInstrument = "choir aahs"
      } {
        \new Voice = "alto" {
          \altoVoice
        }
      }
      \new Lyrics = "alto"
      \context Lyrics = "alto" {
        \lyricsto "alto" {
          \altoVoiceLyrics
        }
      }

      % Soprano
      \new Staff \with {
        instrumentName = "Soprano"
        midiInstrument = "choir aahs"
      } {
        \new Voice = "soprano" {
          \sopranoVoice
        }
      }
      \new Lyrics = "soprano"
      \context Lyrics = "soprano" {
        \lyricsto "soprano" {
          \sopranoVoiceLyrics
        }
      }
    >>

    % Piano
    \new PianoStaff \with {
      instrumentName = "Piano"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } { \right \bar "|." }
      \new Dynamics = "Dynamics_pf" \dynamics
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \left \bar "|." }
    >>
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
