all.data<-read.table('household_power_consumption.txt',header=TRUE,sep=';',dec='.',na.strings = '?')

plot.data<-subset(all.data,all.data$Date=='1/2/2007' | all.data$Date=='2/2/2007')

datetime<-strptime(paste(plot.data$Date, plot.data$Time, " "),'%d/%m/%Y %H:%M:%S')

png('Plot2.png', width=480,height=480)

plot(datetime,plot.data$Global_active_power,ylab='Global Active Power (kilowatts)',main='',type='l',xlab='')
dev.off()