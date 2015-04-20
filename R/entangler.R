#' EntangledClone game for R
#'
#' \href{https://github.com/Cacodaimon/EntangledClone}{EntangledClone} is a
#'    \code{d3.js} based Entanglement clone written in TypeScript.  Since it is
#'    JS/CSS, we can play it in R with this function.
#'
#' @param width \code{integer} width in pixels
#' @param height \code{integer} height in pixels
#'
#' @return \code{htmlwidget} to be used in the console, RStudio viewer, browser, \code{rmarkdown},
#'    or Rstudio Shiny.
#'
#' @import htmlwidgets
#'
#' @export
entangler <- function(width = NULL, height = NULL) {

  # forward options using x
  x = list(  )

  # create widget
  htmlwidgets::createWidget(
    name = 'entangler',
    x,
    width = width,
    height = height,
    package = 'gamer'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
entanglerOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'entangler', width, height, package = 'gamer')
}

#' Widget render function for use in Shiny
#'
#' @export
renderEntangler <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, entanglerOutput, env, quoted = TRUE)
}
