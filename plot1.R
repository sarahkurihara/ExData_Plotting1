plot1fn <- function() {
##load data
data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")

##subset data from the dates 2007-02-01 and 2007-02-02
data <- subset(data, Date == "2/2/2007" | Date == "1/2/2007")

##convert data to character and then numeric
GAP <- as.numeric(as.character(data$Global_active_power))

##Initialize histogram
hist(GAP, 
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)"
)

##Change axes
axis(side = 2, at = c(200,400,600,800,1000,1200))

}