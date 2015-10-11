# process data
source('./ExData_Plotting1/dataLoading.R')

#data varible : filterData

plotFile <- "/plot3.png"

plot3 <- paste(plotDir, plotFile, sep = "")

if(!file.exists(plot3)){
    png(plot3, width = 480, height = 480)
    plot(filterData$Time, filterData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(filterData$Time, filterData$Sub_metering_2, type="l", col="red")
    lines(filterData$Time, filterData$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    dev.off()
} else {
    plot(filterData$Time, filterData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(filterData$Time, filterData$Sub_metering_2, type="l", col="red")
    lines(filterData$Time, filterData$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}