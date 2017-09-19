#' Make me a haiku!
#'
#' Prints haikus on a console. Remember though: Too much haikus and no fun makes
#' Jack a dull boy.
#' @return a haiku
#' @export
#'
#' @examples
#' #Just do
#' haiku()

haiku = function() {

  update_counter()
  bar_hit = .haiku_counter >= round(sample(rbeta(100,5,2) * 10, 1))

  if (bar_hit)
    deal_with_it()
  else
    cat_haiku()
}
