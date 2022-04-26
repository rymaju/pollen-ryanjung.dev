#lang pollen
/* a minimalist set of CSS resets */
/*@import url("https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,700;1,400;1,700&display=swap");*/
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;700;900&family=Roboto+Mono:wght@400;700&display=swap");

:root {
  --font-sans: "Inter", ui-sans-serif, system-ui, -apple-system,
    BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans",
    sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol",
    "Noto Color Emoji";
  --font-serif: /*"Lora",*/ ui-serif, Georgia, Cambria, "Times New Roman", Times,
    serif;
  --font-mono: "Roboto Mono", ui-monospace, SFMono-Regular, Menlo, Monaco,
    Consolas, "Liberation Mono", "Courier New", monospace;
  --font-display: "Playfair Display", "Lora", ui-serif, Georgia, Cambria,
    "Times New Roman", Times, serif;
  font-family: var(--font-sans);

  --prose-max-width: 60ch;
}

/* default to border-box */
html {
  box-sizing: border-box;
  font-size: 16px;
}

*,
*:before,
*:after {
  box-sizing: inherit;
}

/* adjust typography defaults */
body {
  margin: 1rem;
  line-height: 1.5;
  color: #454545;
}

ol,
ul {
padding-inline-start: 20px;
}

li {
  margin-bottom: 0.25em;
}

/* images and videos max out at full width */
img,
video {
  height: auto;
  max-width: 100%;
}

.quote-list {
  list-style: none;
  padding-left: 0;
  margin-top: 0;
}
.quote-list > li {
  margin-bottom: 16px;
}

blockquote {
  border-left: gray solid 4px;
  margin-inline: 0;
  padding-inline-start: 1em;
  margin-block: 0.5em;
}

.emoji-list {
list-style: none;
padding-inline: 0;
}
.emoji-list > li {
text-indent: -23px;
padding-left: 23px;
}

blockquote > em {
display: block;
color: gray;
margin-top: 0.25em;
}

pre, code {
border-radius: 4px;
background-color: #eee;
font-family: var(--font-mono);
}

code {
  padding-left: 2px;
  padding-right: 2px;
}

pre {
padding: 1em;
overflow-x: auto;
}

article {
margin-bottom: 2em;
}

article li,
article p {
max-width: min(var(--prose-max-width), 100%);
}


.nav-links {
  list-style: none;
  padding-left: 0;
}

.nav-links > li {
  display: inline;
}

.nav-links > li > a {
  display: inline;
  font-weight: bold;
  color: inherit;
  text-decoration: none;
}

.nav-links > li > a:active,
.nav-links > li > a:hover {
  text-decoration: underline;

  /* text-decoration-style: underline; */
}

.nav-links > li:not(:last-child):after {
  --nav-link-gap: 6px;
  content: "|";
  margin-left: var(--nav-link-gap);
  margin-right: var(--nav-link-gap);
}

.my-name {
  font-size: 20px;
  margin-bottom: 0;
}

.my-name > a {
  display: inline;
  font-weight: bold;
  color: inherit;
  text-decoration: none;
}

.my-name > a:active,
.my-name > a:hover {
  color: inherit;
  text-decoration: underline;

  /* text-decoration-style: underline; */
}
.my-name > a:visited {
color: inherit;
}

.my-ugly-mug {
  height: width;
  object-fit: cover;
}
.profile {
width: min(100%, 400px);
margin-inline: auto;
}

.two-column-container {
  display: flex;
  gap: 24px;
}

.column-1 {
width: 66%;
}
.column-2 {
  width: 34%;
}

@media screen and (max-width: 720px) {
  .two-column-container {
    flex-direction: column-reverse;
  }
  .column-1 {
    width: 100%;
  }
  .column-2 {
    width: 100%;
  }
  .prose {
    max-width: 100%;
  }

}

.centered-content-container {
  width: min(960px, 100%);
  display: block;
  margin: auto;
  padding-left: 1em;
  padding-right: 1em;
}
#age {
  font-family: var(--font-mono);
}

.bio {
  text-align: right;
}


a {
  /* text-decoration: none; */
  color: #07a;
}

a:hover,
a:active {
  /* text-decoration: underline; */
}

a:visited {
  color: #941352;
}

header {
  margin-bottom: 24px;
}

.preamble {
  margin-bottom: 24px;
}

.prose > p:first-child {
  margin-top: 0;
}

.big-bold {
  font-size: 1.05rem;
  font-weight: bold;
}

.image-caption {
  display: block;
  text-align: center;
}

.post-list-item h2 {
  margin-bottom: 0;
}
.post-list-item header {
  margin-bottom: 0;
}
.post-list-item p {
  margin-top: 0;
}

h1 {
  font-size: 2.5em;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
}

.blog-post {
  max-width: var(--prose-max-width);
}

.blog-list h2 {
  font-size: 1.2em;
}

.blog-list {
  max-width: var(--prose-max-width);
  list-style: none;
  padding-left: 0;
}

.video {
  overflow: hidden;
  /* 16:9 aspect ratio */
  padding-top: 56.25%;
  position: relative;
}
.video iframe {
  border: 0;
  height: 100%;
  left: 0;
  position: absolute;
  top: 0;
  width: 100%;
}
