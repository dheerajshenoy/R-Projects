source("./helpers.R")

# BINOMIAL DISTRIBUTION

# Problem 1

dprint("PROBLEM 1 = ", binomDist(p=0.5, n=5, r=3))

# Problem 2

dprint("PROBLEM 2 = ", binomDist(p=0.4, n=8, r=3))

# Problem 3

dprint("PROBLEM 3 = ", binomDist(p=0.2, n=10, r=2))

# Problem 4

dprint("PROBLEM 4 = ", binomDist(p=0.4, n=5, r=3))

# Problem 5

dprint("PROBLEM 5 = ", binomDist(p=0.1, n=20, r=3))

# POISSON DISTRIBUTION

# Problem 1

poissonDist(r=8, l=10)

# Problem 2

poissonDist(r=2, l=3)

# Problem 3

poissonDist(r=3, l=2)

# Problem 4

poissonDist(r=4, l=5)

# Problem 5

poissonDist(r=2, l=4)


n <- as.integer(readline("N: "))
f = 1
for(i in 1:n) {
  f = f * i
}
print(f)
