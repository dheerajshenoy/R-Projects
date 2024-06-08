# Function for finding the binomial probability distribution function given the `p`, `n` and `r
binomDist <- function(p, n, r) {
  q <- 1 - p
  return(nCr(n, r) * p^r * p^(n-r))
}

# Poisson probability distribution function for given `r` and `l` P(X=r)
poissonDist <- function(r, l) {
  return(exp(-l) * l^r/fact(r))
}

# Returns the mean of the array `arr`
mean <- function(arr) {
  s <- 0
  for(i in arr) {
    s = s + i
  }
  return(s/length(arr))
}

# Returns the median of the array `arr`
median <- function(arr) {
  n <- length(arr)
  if (n %% 2 == 0) l <- n/2
  else l <- (n + 1)/2
  return(arr[l])
}

# Calculates the mode of given set of numbers
mode <- function(arr) {
  M <- unique(arr)
  for(i in arr) {
    count <- 0
    for(j in M) {
      if (i == j) {
        count <- count + 1
      }
    }
    M[i] = count
    }
    maxM <- max(M)
    maxMi <- match(maxM, M)
    return(arr[maxMi])
}

# Standard deviation of given set of elements
standardDeviation <- function(arr) {
    m <- dMean(arr)
    SD <- 0
    for(i in arr) {
        SD = SD + (arr[i] - m)^2
    }
    SD <- sqrt(SD/length(arr))
    return(SD)
}

# Variance of given set of elements
variance <- function(arr) {
    SD <- dStandardDeviation(arr)
    return(SD^2)
}

d = function() {
    n <- readline(prompt="DD: ")
    n <- as.integer(n)
    for (i in 1:n) {
        print(i)
    }
}