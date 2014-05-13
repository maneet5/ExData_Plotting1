#Plot 1
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
datashort <- data[66637:69516,]
plot1 <- as.numeric(as.character(datashort$Global_active_power))
png("plot1.png", width = 480, height = 480)
hist(plot1, col="red", breaks=15, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()