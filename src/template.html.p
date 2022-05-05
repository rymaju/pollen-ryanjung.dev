◊(define title (or (select 'title metas) (select 'h1 doc) "Ryan Jung"))
◊(define desc  (or (select 'desc metas) "My personal site, a web blog about software development, functional programming, and programming languages."))
◊(define file-ext (or (select 'file-ext metas) ".pm"))

<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" type="text/css" href="/styles.css" />
  </head>
<body class="lang-racket">
      <div class="centered-content-container">
        <header>
          <h1 class="my-name">Ryan Jung</h1>
          <ul class="nav-links">
            <li>
              <a href="/index.html">Home</a>
            </li>
            <li>
              <a href="/about.html">About</a>
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
            Built with <a href="https://docs.racket-lang.org/pollen/">Pollen</a> & <a href="https://racket-lang.org/">Racket</a>. See the source code for this page <a href="https://github.com/rymaju/pollen-ryanjung.dev/blob/main/src/◊|here|◊|file-ext|">here</a>.
          </p>
          <p>
            <small>
              Last automatically built and deployed ◊|last-built|.
            </small>
          </p>
        </footer>
</body>

</html>
