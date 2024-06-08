# Function to find the factorial of a given number n >= 0
fact <- function(n) {
  f <- 1
  while(n >= 1) {
    f <- f * n
    n <- n - 1
  }
  return(f)
}

# Returns the combination
nCr <- function(n, r) {
  return(fact(n)/(fact(n - r) * fact(r)))
}

# Returns the permutation
nPr <- function(n, r) {
  return(fact(n)/fact(n - r))
}
