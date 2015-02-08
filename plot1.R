#Load dplyr package
library(dplyr)

#Read data into R
D <- read.csv("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors=FALSE,na.strings="?")

#Filter data by dates February 1, 2007 and February 2, 2007
D2 <- filter(D,Date %in% c("1/2/2007","2/2/2007"))

#Change the dates and times from characters to appropriate object classes for date and time
D2$DateTime<-strptime(paste(D2$Date," ", D2$Time),format="%d/%m/%Y %H:%M:%S")

#Call PNG graphics device
png("plot1.png",width=480,height=480)

#Call hist function to create histogram of Frequency over Global Active Power
hist(D2$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",c="red")

#Close device
dev.off()