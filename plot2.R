mydata<-read.table(data="household_power_consumption.txt"sep=";",header=TRUE,stringAsFactors=FALSE,dec=".")
mydata
ex<-subset(mydata,Date=="1/2/2007")
ex
ex1<-subset(mydata,Date=="2/2/2007")
ex1
data<-rbind(ex,ex1)
data
df<-data$Global_active_power
df
dd<-as.numeric(df)
plot(dd,ylab="Global Active Power(kilowatts)",type="l")
dev.copy(png,file="plot2.png")
dev.off()
png(plot2.png)