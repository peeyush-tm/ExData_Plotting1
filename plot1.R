# process data
source('./ExData_Plotting1/dataLoading.R')

#data varible : filterData

plotFile <- "/plot1.png"

plot1 <- paste(plotDir, plotFile, sep = "")

if(!file.exists(plot1)){
    png(plot1, width = 480, height = 480)
    hist(filterData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
    dev.off()
} else {
    hist(filterData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}