mydata<-read.table(data="household_power_consumption.txt"sep=";",header=TRUE,stringAsFactors=FALSE,dec=".")
mydata
ex<-subset(mydata,Date=="1/2/2007")
ex
ex1<-subset(mydata,Date=="2/2/2007")
ex1
rbind(ex,ex1)
data<-rbind(ex,ex1)
data
df<-data$Global_active_power
df
str(df)
dd<-as.numeric(df)

hist(dd,xlab="Global active power(kilowatts)",ylab="Frequency",main="GlobalActive Power",col="red")
dev.copy(png,file="plot1.png")
dev.off()