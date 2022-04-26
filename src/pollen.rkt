#lang racket
(require pollen/tag pollen/template pollen/core txexpr sugar/coerce)
(provide (all-defined-out))
(define (link url text) `(a ((href ,url)) ,text))

;; Any (Listof (Any Any)) -> Any | #f
(define (second-assoc key alist)
  (define association (assoc key alist))
  (and association (second association)))

(define-tag-function (quote-block attrs elems)
  (define source (second-assoc 'source attrs))
  `(blockquote () ,@elems " " (em () "- " ,source)))

(define (node->link node)
  (define node-string (->string node))
  (define link-name (or (select-from-metas 'title node) node-string))
  (link (string-append "/" node-string) link-name))

(define source-url "https://github.com/rymaju/pollen-ryanjung.dev/")

(define ARTICLE "📝")
(define VIDEO "📺")
(define HARD "🤓")
(define MEDIUM "🤔")
(define EASY "🙂")

(struct quote-text (content attribution))

(define quotes
  (list
   (quote-text
    "By “good programming,” we mean an approach to the creation of software that relies on systematic thought, planning, and understanding from the very beginning, at every stage, and for every step."
    "How to Design Programs 2e, Preface"
    )
   (quote-text
    "A programmer who truly sees his program as an extension of his own ego is not going to be trying to find all the errors in that program. On the contrary, he is going to be trying to prove that the program is correct — even if this means the oversight of errors which are monstrous to another eye."
    "The Psychology of Programming")

   (quote-text
    "I don't know quite how to put this, but our entire field is bad at what we do and if you rely on us everyone will die."
    "xkcd #2030")
   (quote-text
    "“You can’t remember how to balance a binary tree, but you memorized µKanren?”
     “It comes in handy!” You stammer. “And honestly, it’s shorter.”"
    "Aphyr: Unifying the Technical Interview")))

(struct link-text (description url type difficulty))

(define links
  (list
   (link-text "Developing Developers"
              "https://felleisen.org/matthias/Thoughts/Developing_Developers.html"
              ARTICLE
              EASY)
   (link-text "Why the Design Recipe?"
              "https://felleisen.org/matthias/Thoughts/The_Design_Recipe.html"
              ARTICLE
              EASY)
   (link-text "How to Design Programs 2e, Preface"
              "https://htdp.org/2018-01-06/Book/part_preface.html"
              ARTICLE
              EASY)

   (link-text "Joel Spolsky: Advice for Computer Science Students"
              "https://www.joelonsoftware.com/2005/01/02/advice-for-computer-science-college-students/"
              ARTICLE
              EASY)
   (link-text "Paul Graham: Beating the Averages"
              "http://www.paulgraham.com/avg.html"
              ARTICLE
              EASY)
   (link-text "Six Approaches to Dependency Injection"
              "https://fsharpforfunandprofit.com/posts/dependencies/"
              ARTICLE
              MEDIUM)
   (link-text "On the Expressiveness of Programming Languages"
              "https://felleisen.org/matthias/4400-s20/lecture27.html"
              ARTICLE
              MEDIUM)
   (link-text "Propositions as Types"
              "https://www.youtube.com/watch?v=IOiZatlZtGU"
              VIDEO
              MEDIUM)
   (link-text "The Most Beautiful Program Ever Written"
              "https://www.youtube.com/watch?v=OyfBQmvr2Hc"
              VIDEO
              MEDIUM)
   (link-text "99,000 ways to say '(I love you) in Racket"
              "https://io.livecode.ch/learn/namin/icfp2017-artifact-auas7pp"
              ARTICLE
              HARD)
   (link-text "A Guide to Undefined Behavior in C and C++"
              "https://blog.regehr.org/archives/213"
              ARTICLE
              MEDIUM)
   (link-text "Who can name the bigger number?"
              "https://www.scottaaronson.com/writings/bignumbers.html"
              ARTICLE
              HARD)))

(define (list-choose-random ls)
  (list-ref ls (random (length ls))))
(define random-quote (list-choose-random quotes))
(define random-link (list-choose-random links))
(require racket/date)
(define last-built (date->string (current-date)))
