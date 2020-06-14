data <- read.csv('household_power_consumption.txt',header = TRUE,sep = ';',na='?')
data <- subset(data,Date == "1/2/2007" | Date=="2/2/2007" )

png(file="plot4.png")
par(mfrow=c(2,2))
date_time <- strptime(paste(data$Date, data$Time),'%d/%m/%Y %H:%M:%S')


plot(date_time,data$Global_active_power,ylab="Global Active Power",xlab='',type='l',lwd=2)

plot (date_time,data$Voltage,ylab="Voltage",xlab='datetime',type='l')

plot(date_time,data$Sub_metering_1,type='l',col="black",xlab='',ylab='.')
lines(date_time,data$Sub_metering_2,type='l',col="red")
lines(date_time,data$Sub_metering_3,type='l',col="blue")
legend("topright", legend=c("Sub_metering 1", "Sub_metering 2","Sub_metering 3"),
       col=c("black","red", "blue"),lty=1)
title(ylab = "Energy sub metering")
      

plot(date_time,data$Global_reactive_power,ylab="Global Active Power",xlab='',type='l')

dev.off()