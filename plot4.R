#Plot 4
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
datashort <- data[66637:69516,]
time <- as.POSIXct(paste(datashort$Date, datashort$Time), format="%d/%m/%Y %H:%M:%S")
#plots set up
plot4 <- as.numeric(as.character(datashort$Global_reactive_power))
plot3sub1 <- as.numeric(as.character(datashort$Sub_metering_1))
plot3sub2 <- as.numeric(as.character(datashort$Sub_metering_2))
plot3sub3 <- as.numeric(as.character(datashort$Sub_metering_3))
plot2 <- as.numeric(as.character(datashort$Global_active_power))
plot5 <- as.numeric(as.character(datashort$Voltage))

png("plot4.png")
par(mfrow = c(2,2))
#first plot
plot(time, plot2, ylab="Global Active Power (kilowatts)", xlab = "", type = "l")
#second plot
plot(time, plot5, ylab="Voltage", xlab="datetime", type="l")
#third plot
plot(time, plot3sub1, ylab="Energy sub metering", xlab = "", type = "l")
points(time, plot3sub2, ylab="Energy sub metering", xlab = "", type = "l", col = "red")
points(time, plot3sub3, ylab="Energy sub metering", xlab = "", type = "l", col = "blue")
legend("topright", cex = 0.5, lty = c(1,1,1), bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#fourth plot
plot(time, plot4, ylab="Global_reactive_power", xlab = "datetime", type = "l")
dev.off()