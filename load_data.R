all_data <- read.csv2("household_power_consumption.txt", na.strings = "?", dec = ".")

two_days <- all_data[,1] == "1/2/2007" | all_data[,1] == "2/2/2007"

dataset <- all_data[two_days,]




