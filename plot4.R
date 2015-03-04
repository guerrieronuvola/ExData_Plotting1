source("load_data.R")

Sys.setlocale("LC_TIME", "English")

png(filename = "plot4.png",
	width = 480, height = 480, units = "px", bg = "white")

par(mfrow = c(2,2))

plot(dataset$real_time, dataset$Global_active_power, type = "l", 
	ylab = "Global Active Power (kilowatts)", xlab = "")


plot(dataset$real_time, dataset$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")


plot(dataset$real_time, dataset$Sub_metering_1, type = "l",	ylab = "Energy Sub Metering",
	xlab = "")
lines(dataset$real_time, dataset$Sub_metering_2, type = "l",	ylab = "", xlab = "", col = "red")
lines(dataset$real_time, dataset$Sub_metering_3, type = "l",	ylab = "", xlab = "", col = "blue")

legend(x = "topright", col = c("black", "red", "blue"), lty = 1, 
	legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n" )


plot(dataset$real_time, dataset$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")


dev.off()