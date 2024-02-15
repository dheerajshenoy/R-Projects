OrdLinearFit = function(x, y) {
    x_bar <- mean(x)
    y_bar <- mean(y)

    # Xi - mean(X)
    x_diff = x - x_bar

    # Yi - mean(Y)
    y_diff = y - y_bar

    x_sq_diff = x_diff^2

    m = sum(x_diff * y_diff)/sum(x_sq_diff)
    i = y_bar - m * x_bar
    return(c(m, i))
}

#
#X <- (1:10)
#Y <- c(1, 2.5, 10.45, 18, 24, 35.2, 40, 60.2, 55.2, 65)

#S <- OrdLinearFit(X, Y)

#plot(X, Y)
#points(X, S[1] * X + S[2], type="l")


readSTDIN = function() {
    n = readline("Enter the number of elements:")
    print(paste("Enter ", n, " elements for X:"))
    X = c()
    Y = c()
    i = 0
    while(i < n) {
        num = as.numeric(readline())
        X <- append(X, num)
        i = i + 1
    }
    i = 0
    print(paste("Enter ", n, " elements for Y:"))
    while(i < n) {
        num = as.numeric(readline())
        Y <- append(Y, num)
        i = i + 1
    }
    C <- OrdLinearFit(X, Y)
    plot(X, Y)
    points(X, C[1] * X + C[2], type="l")
}

readSTDIN()
