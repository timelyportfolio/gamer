# gamer | games in R
`gamer` is more of an illustration than a worthwhile `htmlwidget`.  Lots of games
are just `HTML`/`JS`/`CSS` which are the same ingredients of `htmlwidgets`.

### Easy Install
Install `gamer` using `devtools::install_github()`.

```
devtools::install_github("gamer")
```
 
### EntangledClone
Guido Krömer built a [clone](http://cacodaemon.de/index.php?id=67) of the hexagonal strategy game *Entangle* using `TypeScript` and `d3.js`.  We can play it in R.

```r
library(gamer)
entangler()
```

Of course, since it is a widget, you can embed it in `rmarkdown` or `Shiny`.

