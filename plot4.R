#Load dplyr package
library(dplyr)
#Read data into R
D <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE,stringsAsFactors = FALSE,na.strings = "?")
#Filter data by dates February 1, 2007 and February 2, 2007
D2 <- filter(D,Date %in% c("1/2/2007","2/2/2007"))
#Change the dates and times from characters to appropriate object classes for date and time
D2$DateTime <- strptime(paste(D2$Date," ",D2$Time),format = "%d/%m/%Y %H:%M:%S")

#Call PNG graphics device with appropriate dimensions
png("plot4.png",width = 480,height = 480)
par(mfcol = c(2,2))
plot(D2$DateTime,D2$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",xlab = NA)
#Define line colors
c <- c("black","red","blue")
#Define legend labels
v <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
#Call plot function to create line plot (type=l) of sub metering over time
plot(D2$DateTime,D2$Sub_metering_1,type = "l",ylab = "Energy sub metering",xlab = NA, col = c[1])
#Add sub metering 2
lines(D2$DateTime,D2$Sub_metering_2,col = c[2])
#Add sub metering 3
lines(D2$DateTime,D2$Sub_metering_3,col = c[3])
#Add legend
legend("topright",lty = 1,col = c,legend = v,bty = "n")
plot(D2$DateTime, D2$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot (D2$DateTime, D2$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
#Close device
dev.off()