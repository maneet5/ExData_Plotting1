#Plot 2
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
datashort <- data[66637:69516,]
plot2 <- as.numeric(as.character(datashort$Global_active_power))
plot2time <- as.POSIXct(paste(datashort$Date, datashort$Time), format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(plot2time, plot2, ylab="Global Active Power (kilowatts)", xlab = "", type = "l")
dev.off()