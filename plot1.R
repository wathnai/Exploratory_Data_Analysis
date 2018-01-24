png("plot1.png", width=480, height=480)
hist(df$Global_active_power, col = "red", main = "Global Active POwer", xlab = "Global Active Power (kilowatts)")
dev.off()