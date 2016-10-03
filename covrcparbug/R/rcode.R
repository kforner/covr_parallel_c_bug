
rfoo <- function(a, b) {
r <- .C("cfoo",
  as.double(a),
  as.double(b),
  res = double(1))

  r$res
}

rbar <- function(a, b) {
  r <- .C("cbar",
      as.double(a),
      as.double(b),
      res = double(1))

  r$res
}