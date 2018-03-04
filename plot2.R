#Graph 2
png("plot2.png", width=480, height=480)
plot(power_data1$datetime3, power_data1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
       dev.off()
