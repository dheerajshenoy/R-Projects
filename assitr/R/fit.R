## Function that does ordinary linear fit to the given dataset X and Y
OrdLinearFit <- function(x, y) {
  x_bar <- mean(x)

  y_bar <- mean(y)
  x_diff <- x - x_bar
  y_diff <- y - y_bar
  x_sq_diff <- x_diff^2

  # M is the slope, I is the intercept
  m <- sum(x_diff * y_diff)/sum(x_sq_diff)
  i <- y_bar - m * x_bar
  return(c(m, i))
}

# Wrapper around the function `OrdLinearfit` that takes input from the STDIN for the X and Y data
stdinOrdLinearFit <- function() {
  n <- readline("Enter the number of elements:")
  print(paste("Enter ", n, " elements for X:"))
  X <- c()
  Y <- c()
  i <- 0
  while(i < n) {
    num <- as.numeric(readline())
    X <- append(X, num)
    i <- i + 1
  }
  i <- 0
  print(paste("Enter ", n, " elements for Y:"))
  while(i < n) {
    num <- as.numeric(readline())
    Y <- append(Y, num)
    i <- i + 1
  }
  C <- OrdLinearFit(X, Y)
  plot(X, Y)
  points(X, C[1] * X + C[2], type<-"l")
}
