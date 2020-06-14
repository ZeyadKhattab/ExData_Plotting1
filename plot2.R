data <- read.csv('household_power_consumption.txt',header = TRUE,sep = ';',na='?')

data <- subset(data,Date == "1/2/2007" | Date=="2/2/2007" )
date_time <- strptime(paste(data$Date, data$Time),'%d/%m/%Y %H:%M:%S')


png(file="plot2.png")

plot(date_time,data$Global_active_power,ylab="Global Active Power (kilowatts)",xlab='',type='l',lwd=2)

dev.off()
