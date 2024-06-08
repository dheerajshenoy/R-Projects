table <- read.csv(file = "./K2 Light Curve Data.csv", header= TRUE)

png("Kepler.png")
plot(table$BJD...2454833, table$Corrected.Flux, type="l", pch=5, lwd=3, xlab="JD", ylab="Intensity", main = "Kepler Light Curve")
dev.off()
