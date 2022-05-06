#lang pollen
◊(require pollen/pagetree)

◊(let () (current-pagetree (load-pagetree "index.ptree")) "")


◊(for/splice ([page (map symbol->string
                         (remove 'sitemap.txt (pagetree->list (current-pagetree))))])
             (string-append "https://ryanjung.dev/" page "\n"))
