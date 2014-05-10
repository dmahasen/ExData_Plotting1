HP_con.subset.4 <- read.csv("HP_consumption_Subset.csv")

date_time <- paste(as.character(HP_con.subset.4$Date),as.character(HP_con.subset.4$Time))

HP_con.subset.4$Date_Time <- strptime(date_time,format="%Y-%m-%d %H:%M:%S")

png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(HP_con.subset.4,
{
  plot(Date_Time,Global_active_power,type="l",ylab="Global Active Power",xlab="")
  plot(Date_Time,Voltage,type="l",xlab="datetime")
  plot(Date_Time,Sub_metering_1,ylab="Energy sub metering",xlab="",type="l")
  lines(Date_Time,Sub_metering_2,col="red")
  lines(Date_Time,Sub_metering_3,col="blue")
  legend("topright",lty=c(1,1),bty="n",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(Date_Time,Global_reactive_power,type="l",xlab="datetime")
  
})
dev.off()
par(mfrow=c(1,1))
