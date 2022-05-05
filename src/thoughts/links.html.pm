#lang pollen
◊(define-meta title "Links")
◊(define-meta desc "A collection of links to enriching ideas, sorted more or less in order of importance.")

◊ul[#:class "emoji-list"]{
◊li{◊|ARTICLE| Article}
◊li{◊|VIDEO| Video}
◊li{◊|EASY|   Requires little to no CS knowledge: for high school students, college freshmen, or the average software engineer}
◊li{◊|MEDIUM| Makes you think: for interested sophomore+ college students or software engineers who care about their work}
◊li{◊|HARD|   Academic and painful: for nerds like me}
}


◊h3{Links}

◊p{◊(select-from-metas 'desc metas)}

◊(apply ul (map (lambda (link) (li (link-text-type link)
                                   " "
                                   (link-text-difficulty link)
                                   " "
                                   (a #:href (link-text-url link) (link-text-description link))))
                                   links))
