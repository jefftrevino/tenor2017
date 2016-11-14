\version "2.18.2"

\header {
   tagline = ##f
}

#(set! paper-alist (cons '("whatever" . (cons (* 66 mm) (* 20 mm))) paper-alist))
\paper {
  #(set-paper-size "whatever")
}

\score {
   \new Staff \relative c'' {
      \key c \major
      \time 3/4

      << { a4^\markup{"before"} b c } \\ { e,4 f g} >> |
      \bar "||"
      << { e4^\markup{"after"} f g } \\ { a4 b c } >> |
   }
   \layout { }
}
