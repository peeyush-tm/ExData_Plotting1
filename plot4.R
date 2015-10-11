# process data
source('./ExData_Plotting1/dataLoading.R')

#data varible : filterData

plotFile <- "/plot4.png"

plot4 <- paste(plotDir, plotFile, sep = "")

if(!file.exists(plot4)){
    png(plot4, width = 480, height = 480)
    par(mfrow=c(2,2))	
    plot(filterData$Time, filterData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
    plot(filterData$Time, filterData$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
    plot(filterData$Time, filterData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(filterData$Time, filterData$Sub_metering_2, type="l", col="red")
    lines(filterData$Time, filterData$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    plot(filterData$Time, filterData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
    dev.off()
} else {
    par(mfrow=c(2,2))	
    plot(filterData$Time, filterData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
    plot(filterData$Time, filterData$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
    plot(filterData$Time, filterData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(filterData$Time, filterData$Sub_metering_2, type="l", col="red")
    lines(filterData$Time, filterData$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    plot(filterData$Time, filterData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
}