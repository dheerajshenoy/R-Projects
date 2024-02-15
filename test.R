csv = read.csv("~/Gits/R Projects/exp1.csv")
plot(csv$V,csv$B.V,
     pch=16,
     col='red',
     xlab='V',
     ylab='B-V')

X <- csv$V
Y <- csv$B.V
