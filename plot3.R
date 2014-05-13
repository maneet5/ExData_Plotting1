#Plot 3
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
datashort <- data[66637:69516,]
plot3time <- as.POSIXct(paste(datashort$Date, datashort$Time), format="%d/%m/%Y %H:%M:%S")
plot3sub1 <- as.numeric(as.character(datashort$Sub_metering_1))
plot3sub2 <- as.numeric(as.character(datashort$Sub_metering_2))
plot3sub3 <- as.numeric(as.character(datashort$Sub_metering_3))
png("plot3.png", width=480, height=480)
plot(plot3time, plot3sub1, ylab="Energy sub metering", xlab = "", type = "l")
points(plot3time, plot3sub2, ylab="Energy sub metering", xlab = "", type = "l", col = "red")
points(plot3time, plot3sub3, ylab="Energy sub metering", xlab = "", type = "l", col = "blue")
legend("topright", cex = 0.75, lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()