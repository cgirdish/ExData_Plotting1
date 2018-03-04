#Graph 1
#read in dataset from location of download
power_data<- read.table("household_power_consumption.txt", header=TRUE, sep=";",  na.strings = "?", stringsAsFactors=FALSE)

#subset
power_data$Date <- as.Date(power_data$Date, format="%d/%m/%Y")
power_data1 <- power_data[(power_data$Date=="2007-02-01") | (power_data$Date=="2007-02-02"),]

#paste date and time
datetime<- paste(power_data1$Date, power_data1$Time)
power_data1$datetime3<- strptime(datetime, "%Y-%m-%d %H:%M:%S")

#convert variables to numeric
power_data$Global_active_power<- as.numeric(power_data$Global_active_power)
power_data$GlobalReactivePower <- as.numeric(power_data $Global_reactive_power)
power_data$Voltage <- as.numeric(power_data$Voltage)
power_data$Sub_metering_1 <- as.numeric(power_data$Sub_metering_1)
power_data$Sub_metering_2 <- as.numeric(power_data$Sub_metering_2)
power_data$Sub_metering_3 <- as.numeric(power_data$Sub_metering_3)

#create histogram as png
png("plot1.png", width=480, height=480)
hist(power_data1$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()
