data <- read.csv('household_power_consumption.txt',header = TRUE,sep = ';',na='?')

data <- subset(data,Date == "1/2/2007" | Date=="2/2/2007" )
date_time <- strptime(paste(data$Date, data$Time),'%d/%m/%Y %H:%M:%S')


png(file="plot3.png")

plot(date_time,data$Sub_metering_1,type='l',col="black",xlab='',ylab='.')
lines(date_time,data$Sub_metering_2,type='l',col="red")
lines(date_time,data$Sub_metering_3,type='l',col="blue")
title(ylab = "Energy sub metering")
legend("topright", legend=c("Sub_metering 1", "Sub_metering 2","Sub_metering 3"),
       col=c("black","red", "blue"),lty=1,cex=0.6)
dev.off()
