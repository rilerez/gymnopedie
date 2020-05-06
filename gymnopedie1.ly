\version "2.20.0"

\pointAndClickOff
#(set-default-paper-size "letter")

\header{
  title = \markup{1\super{ère} Gymnopédie}
  composer = "Erik Satie"
}



\markup{Lent et doloureux}
\new PianoStaff
<<
  \new Staff
  {\clef treble \time 3/4 \key d\major
   \repeat volta 2
   {\override DynamicLineSpanner.staff-padding = #3
    R2.*4\pp
    \relative c'' {
      r4 fis\pp\< \(a |
      g fis cis | b cis\! d |
      << {a2.\>} {s4 s4 s4\!} >> |
      fis2.\f\)~|fis~|fis~|fis
    }
    \relative c'' {r4 fis\pp\< \( a g fis cis b cis\! d  a2.\> cis2. fis | e,~\)\!e~e }
    \relative a' {a4\p\( b\< c | e d b\! | d\> c b\! d2.~ | d2\) d4\( | e f g |
                  a c, d | e d b | d2.~| d2\)\<  d4\( |g2. |  }
                }
    \alternative {
      {\relative g'' { fis2.\! | b,4 a b| cis d e\> | cis d e |
                       << {fis,2.}
                          \\ {r4 <<a, d>> <<b d g >> } >>\! |
                       << c,2. e a c>> | \)<< d, fis a d>>}}
    {\(\relative g'' {f2. | b,4 c f | e d c | e d c | \>
                      << {f,2.} \\ {r4  <<a, d>> <<b d g>>} >>
                      |\) <<c,2. e a c>> | << d, f a d>>\!   }}
 }
}
  \new Staff {\clef bass \time 3/4  \key d\major
              \repeat volta 2{
                \repeat unfold 8{
                  <<
                    {\relative c' {r4 << b2 d fis>> | r4 << a,2 cis fis  >> } }
                    \\ {\relative c {g2.  d} }
                  >>
                }
                <<
                  \new Voice = "chord" {\voiceOne \relative c' {
                    r4 << a2 cis fis >> | r4 << b,2 d fis>> | r4 << g,2 b>> | r4 <<b2 d g>> |
                    r4 << f,2 a d>> | r4 <<a2 c e >> | r4 << g,2 b e>> | r4 <<d,2 g b e>> |
                    r4 << c,2 e a d>> | r4 <<c,2 fis a  d >> | r4 <<a2 c f>> | r4 <<a,2 c e>> |
                    r4 << d,2 g b e >> | r4 <<c,2 e a d>> | r4 <<c,2 fis a d>> | r4 << b2 e g>>
                  }}
                  \new Voice {\voiceTwo \relative f, {
                    fis2. b, e e d  a \repeat unfold 9 {d} e } }
                >>
              }
              \alternative {
                {<<{\relative a {r4 <<a2 cis fis>> r4 <<b,2 d fis>> r4 << cis2 e a>>
                                 r4 <<a,2 cis fis a>> r4 b,, e}}
                   \\ {\relative e, {d2. b e e e}}>>
                  \relative c {<<a g'>>  << d, a' d>>}
                }
                {<< \relative f {r4 <<a2 d f a >> | r4 << a,2 c f>> | r4 << c2 e a >>
                                 | r4 << a,2 c f a >> | r4 b,, e }
                    \\ \relative c, {e2. e e e e} >>
                  <<a, g>> <<d, a, d>>
                }
              }}
>>
