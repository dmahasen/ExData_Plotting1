HP_con.subset.3 <- read.csv("HP_consumption_Subset.csv")

date_time <- paste(as.character(HP_con.subset.3$Date),as.character(HP_con.subset.3$Time))

HP_con.subset.3$Date_Time <- strptime(date_time,format="%Y-%m-%d %H:%M:%S")

png("plot3.png",width=480,height=480)
with(HP_con.subset.2,plot(Date_Time,Sub_metering_1,ylab="Energy sub metering",xlab="",type="l"))
with(HP_con.subset.2,lines(Date_Time,Sub_metering_2,col="red"))
with(HP_con.subset.2,lines(Date_Time,Sub_metering_3,col="blue"))
legend("topright",lty=c(1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()

