plot3fn <- function() {
     ##load data
    data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
    
    ##subset data from the dates 2007-02-01 and 2007-02-02
    data <- subset(data, Date == "2/2/2007" | Date == "1/2/2007")
     
     ###Convert date and time
     datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
     SM1 <- as.numeric(as.character(data$Sub_metering_1))
     SM2 <- as.numeric(as.character(data$Sub_metering_2))
     SM3 <- as.numeric(as.character(data$Sub_metering_3))

     ###Initialize
     plot(datetime, SM1, type = "l", 
          ylab = "Energy sub meeting", 
          xlab = " ")

     ##Add SM2, SM3
     lines(datetime, SM2, type = "l", col = "red")
     lines(datetime, SM3, type = "l", col = "blue")

     ##Add legend
     legend("topright",
            cex = 0.5,
            legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
            lty = c(1, 1, 1),
            col = c("black", "red", "blue"))

}
