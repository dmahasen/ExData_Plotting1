HP_con.subset.2 <- read.csv("HP_consumption_Subset.csv")

date_time <- paste(as.character(HP_con.subset.2$Date),as.character(HP_con.subset.2$Time))

date_time.1 <- strptime(date_time,format="%Y-%m-%d %H:%M:%S")

HP_con.subset.2$Date_Time <- date_time.1

png("plot2.png",width=480,height=480)
plot(HP_con.subset.2$Date_Time,HP_con.subset.2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()


