source("load_data.R")

Sys.setlocale("LC_TIME", "English")

png(filename = "plot2.png",
    width = 480, height = 480, units = "px", bg = "white")

plot(dataset$real_time, dataset$Global_active_power, type = "l", 
	ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()