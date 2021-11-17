is_plausible <- function(value, minimum = -Inf, maximum = Inf) {
  stopifnot(is.numeric(value))
  value >= minimum & value <= maximum
}