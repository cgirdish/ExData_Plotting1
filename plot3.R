#Graph 3
png("plot3.png",width=480,height=480)
plot(power_data1$datetime3, power_data1$Sub_metering_1,type="l",ylab="Energy sub metering",xlab=NA,col="black")
lines(power_data1$datetime3, power_data1$Sub_metering_2, col="red")
lines(power_data1$datetime3, power_data1$Sub_metering_3, col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
