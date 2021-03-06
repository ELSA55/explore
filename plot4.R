data<-read.csv(file.choose(),header=TRUE)
head(data)
d1<-subset(data,Date=="1/2/2007")
d2<-subset(data,Date=="2/2/2007")
nd<-rbind(d1,d2)
dim(nd)
par(mfrow=c(2,2))
plot(nd$Global_active_power,type="l",ylab="Global Active Power")
plot(nd$Voltage,type="l",ylab="voltage",xlab="datetime")
plot(nd$Sub_metering_1,ylab="Energy submerging",type="l")
lines(nd$Sub_metering_2,col="red")
lines(nd$Sub_metering_3,col="blue")
plot(nd$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")

hist(nd$Global_active_power,col="red",xlim=c(0,6),main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="frequency")
dev.copy(png,file="plot4.png")
dev.off()
