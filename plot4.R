##change number of plots allowed
par(mfrow = c(2,2))
par(mar = c(5, 5, 5, 5))

##plot 1 in 1,1
plot2fn()

##new plot in 1,2
voltage <- as.numeric(as.character(data$Voltage))
plot(datetime, voltage, type = "l")

##plot 3 in 3rd position
plot3fn()

##new plot in 4th position
Global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
plot(datetime, Global_reactive_power, type = "l")
axis(side = 2, at = c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5))
