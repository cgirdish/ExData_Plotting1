#Graph4
png("plot4.png",width=480,height=480)
par(mfcol=c(2,2))
# Top left plot
plot(power_data1$datetime3, power_data1$Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="")
# Bottom left plot
plot(power_data1$datetime3, power_data1$Sub_metering_1,type="l",ylab="Energy sub metering", xlab="", col="black")
lines(power_data1$datetime3, power_data1$Sub_metering_2, col="red")
lines(power_data1$datetime3, power_data1$Sub_metering_3, col="blue")
legend("topright", lty=1, bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
# Top right plot
plot(power_data1$datetime3, power_data1$Voltage, type="l", xlab="datetime", ylab="Voltage")
# Bottom right plot
plot (power_data1$datetime3, power_data1$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
