◊;defining constants for SEO
◊(define title (or (select 'title metas) (select 'h1 doc) "Ryan Jung"))
◊(define desc  (or (select 'desc metas) "My personal site, a web blog about software development, functional programming, and programming languages."))

<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="◊|desc|">

    <meta data-react-helmet="true" property="og:title" content="◊|title|">
    <meta data-react-helmet="true" property="og:description" content="◊|desc|">
    <meta data-react-helmet="true" property="og:type" content="website">

    <meta data-react-helmet="true" name="twitter:card" content="summary">
    <meta data-react-helmet="true" name="twitter:title" content="◊|title|">
    <meta data-react-helmet="true" name="twitter:description" content="◊|desc|">

    <title>◊|title|</title>
    ◊;<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.28.0/themes/prism.min.css" integrity="sha512-tN7Ec6zAFaVSG3TpNAKtk4DOHNpSwKHxxrsiw4GHKESGPs5njn/0sMCUMl2svV4wo4BK/rCP7juYz+zx+l6oeQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="/styles.css" />
  </head>
<body class="lang-racket">
      <div class="centered-content-container">
        <header>
          <h1 class="my-name">Ryan Jung</h1>
          <ul class="nav-links">
            <li>
              <a href="/">Home</a>
            </li>
            <li>
              <a href="/about">About</a>
            </li>
            <li>
              <a href="/thoughts">Thoughts</a>
            </li>
          </ul>
        </header>
        <main>
          ◊(if (equal? here 'index.html)
               (->html doc)
               (->html `(article () ,doc)))
        </main>

        <footer>
          <p>
          ◊when/splice[(previous here)]{

          <- ◊(->html (node->link (previous here)))
          }
          ◊when/splice[(next here)]{
          <span style="float:right;">◊|(->html (node->link (next here)))| -></span>
          }
          </p>
          <p>
            Built with <a href="https://docs.racket-lang.org/pollen/">Pollen</a> & <a href="https://racket-lang.org/">Racket</a>. See the source code for this page <a href="https://github.com/rymaju/pollen-ryanjung.dev/blob/main/◊|here|">here</a>.
          </p>
          <p>
            <small>
              Last automatically built and deployed ◊|last-built|.
            </small>
          </p>
        </footer>
        ◊;<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.28.0/prism.min.js" integrity="sha512-RDQSW3KoqJMiX0L/UBgwBmH1EmRYp8LBOiLaA8rBHIy+7OGP/7Gxg8vbt8wG4ZYd29P0Fnoq6+LOytCqx3cyoQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        ◊;<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.28.0/plugins/autoloader/prism-autoloader.min.js" integrity="sha512-fTl/qcO1VgvKtOMApX2PdZzkziyr2stM65GYPLGuYMnuMm1z2JLJG6XVU7C/mR+E7xBUqCivykuhlzfqxXBXbg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>
