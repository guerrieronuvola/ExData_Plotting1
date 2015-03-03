source("load_data.R")

Sys.setlocale("LC_TIME", "English")

png(filename = "plot2.png",
    width = 480, height = 480, units = "px", bg = "white")

plot(dataset$real_time, dataset$Sub_metering_1, type = "l",	ylab = "Energy Sub Metering",
	xlab = "")
lines(dataset$real_time, dataset$Sub_metering_2, type = "l",	ylab = "", xlab = "", col = "red")
lines(dataset$real_time, dataset$Sub_metering_3, type = "l",	ylab = "", xlab = "", col = "blue")

legend(x = "topright", col = c("black", "red", "blue"), lty = 1, 
	legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )

dev.off()