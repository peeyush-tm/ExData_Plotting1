# process data
source('./ExData_Plotting1/dataLoading.R')

#data varible : filterData
plotFile <- "/plot2.png"

plot2 <- paste(plotDir, plotFile, sep = "")

if(!file.exists(plot2)){
    png(plot2, width = 480, height = 480)
    plot(filterData$Time, filterData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
    dev.off()
} else {
    plot(filterData$Time, filterData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}