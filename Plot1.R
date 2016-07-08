all.data<-read.table('household_power_consumption.txt',header=TRUE,sep=';',dec='.',na.strings = '?')

plot.data<-subset(all.data,all.data$Date=='1/2/2007' | all.data$Date=='2/2/2007')

plot.data$Date<-as.Date(plot.data$Date,'%d/%m/%Y')

png('Plot1.png',width=480, height=480)
hist(plot.data$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',ylab='Frequency',col='red')
dev.off()
