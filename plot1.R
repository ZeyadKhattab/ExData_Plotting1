data <- read.csv('household_power_consumption.txt',header = TRUE,sep = ';',na='?')

data <- subset(data,Date == "1/2/2007" | Date=="2/2/2007" )

options(scipen=999)

png(file="plot1.png")

hist(data$Global_active_power,col="red",main = "Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()
