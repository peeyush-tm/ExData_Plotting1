# project path is `getwd()`
# ` projectPath <- "/Users/praj/Documents/COURSERA/R-Programming/L4.explore.data.Q1" `
# git Directory <- ExData_Plotting1
# fix path with ` setwd(projectPath) `

library(httr) 

fileLink <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# data directory
dataDir <- "./data"
if(!file.exists(dataDir)){
    dir.create(dataDir)
} 

# plot directory
plotDir <- paste(getwd(), "/ExData_Plotting1/plot", sep = "")
if(!file.exists(plotDir)){
    dir.create(plotDir)
} 

# archive directory
archiveFile <- paste(getwd(), "/data/exdata_data_household_power_consumption.zip", sep = "")
if(!file.exists(archiveFile)){
    download.file(fileLink, archiveFile, method="curl", mode="wb")
}

# move extract to data directory
extractFile <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")
if(!file.exists(extractFile)){
    unzip(archiveFile, list = FALSE, overwrite = FALSE, exdir = data)
}

# start reading the data
data <- read.table(extractFile, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
filterDate <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
filterData <- subset(data, Date %in% filterDate)
