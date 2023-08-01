#lang pollen

◊(define-meta title "Home")
◊(require pollen/pagetree racket/list)
◊(let () (current-pagetree (load-pagetree "index.ptree")) "")

◊div[#:class "two-column-container"]{
        ◊section[#:class "column-1"]{
                ◊section[#:style "margin-bottom:1em;"]{
                ◊strong{Quote of the Day:}
                ◊quote-block[#:source ◊(quote-text-attribution random-quote)]{
                        ◊(quote-text-content random-quote)
                }
                ◊small[#:style "display:block;"]{◊a[#:href "/thoughts/quotes.html"]{See all quotes}}
                }

                ◊section[#:style "margin-bottom:1em;"]{
                ◊strong{Link of the Day:}
                ◊a[#:href ◊(link-text-url random-link)]{
                    ◊(link-text-description random-link)
                }
                ◊small[#:style "display:block;"]{◊a[#:href "/thoughts/links.html"]{See all links}}
                }

                ◊section{
                ◊strong{What I am (or was) up to:}
                ◊ul{
                    ◊li{Working as a Forward Deployed Engineer at Palantir. ◊span[#:style "color:gray"]{Now}}
                    ◊li{Led development at ◊a[#:href "https://c4cneu.com"]{Code 4 Community}, developing software for nonprofits in Boston and their 10,000s of users. ◊span[#:style "color:gray"]{2019-2023}}
                    ◊li{TA for CS4500 Software Development. ◊span[#:style "color:gray"]{Fall 2022}}
                    ◊li{TA for CS4400 Programming Languages. ◊span[#:style "color:gray"]{Summer 2022}}
                    ◊li{Attempted not to break things as an intern at Palantir. ◊span[#:style "color:gray"]{Summer 2022}}
                    ◊li{Built data ingestion systems at Hubspot. ◊span[#:style "color:gray"]{Spring 2022}}
                    ◊li{Helped make networking work at Cisco. ◊span[#:style "color:gray"]{Summer 2021}}
                    ◊li{Scaled financial algorithms at John Hancock. ◊span[#:style "color:gray"]{Spring 2021}}
                }
                }

                ◊section{
                ◊strong{Recent Thoughts:}
                ◊(apply ul #:class "toc"
                    (map (compose li node->link) (take (children 'thoughts/index.html) 3)))

                ◊small[#:style "display:block;"]{◊a[#:href "/thoughts"]{See all posts}}
                }

        }
          ◊section[#:class "column-2"]{
            ◊div[#:class "profile"]{
                ◊img[
                    #:alt   "Ryan Jung"
                    #:class "my-ugly-mug"
                    #:src   "/spring-ryan.jpg"

                ]{}
                ◊ul[#:class "emoji-list"]{
                ◊li{💬 He/Him}
                ◊li{💼 Forward Deployed Engineer @ Palantir}
                ◊li{🎓 BSCS Northeastern 2023}
                ◊li{💻 ◊a[#:href "https://github.com/rymaju/"]{Github}}
                ◊li{📘 ◊a[#:href "https://www.linkedin.com/in/ryanmjung/"]{LinkedIn}}
                ◊li{📧 ryan.matthew.jung⚓gmail.com}
                }
            }
        }
 }
