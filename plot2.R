plot2fn <- function() {
     ##load data
     data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")

     ##subset data from the dates 2007-02-01 and 2007-02-02
     data <- subset(data, Date == "2/2/2007" | Date == "1/2/2007")

     #Convert date and time
     datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

     #Plot 2
     plot(datetime, GAP, 
          type = "l",
          ylab = "Global Active Power (kilowatts)",
          xlab = " ")
}
