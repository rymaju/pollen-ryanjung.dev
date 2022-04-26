#lang pollen
◊(define-meta title "Quotes")
◊(define-meta desc "A collection of quotes on programming and computer science.")
◊(for/splice ([q quotes])
(p(quote-block #:source (quote-text-attribution q) (quote-text-content q))))

