#' My shannon diversity function
#'
#' This is the best function ever! Thanks, Shannon.
#'
#' @param x A vector of numeric values representing species abundance in
#' a communty
#'
#' @return Shannon diversiy value: sum -pi*log(pi)
#' @export
#'
#' @examples
#' com <- c(1,4,7,8)
#' my_shannon(com) == 1.21
my_shannon <- function(x) {
  x <- x[x>0]
  sum_all <- sum(x)
  pi <- x/sum_all
  -sum(pi*log(pi))
}
