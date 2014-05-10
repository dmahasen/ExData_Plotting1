HP_con.subset.1 <- read.csv("HP_consumption_Subset.csv")

png("plot1.png",width=480,height=480)
hist(HP_con.subset.1$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()


