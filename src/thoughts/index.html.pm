#lang pollen
◊(define-meta title "Thoughts")
◊(define-meta template "../template.html.p")
◊(require pollen/pagetree pollen/template sugar/coerce)

◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")


◊;------------------------------------------------------------

◊h1{Thoughts}

◊p{A collection of short blog posts about programming. In order to get better at technical writing I'm aiming to write a short post every week.}

◊h2{Chronological Order}
◊(apply ul #:class "toc"
  (map (compose li node->link) (children 'thoughts/index.html)))
