all.data<-read.table('household_power_consumption.txt',header=TRUE,sep=';',dec='.',na.strings = '?')

plot.data<-subset(all.data,all.data$Date=='1/2/2007' | all.data$Date=='2/2/2007')

datetime<-strptime(paste(plot.data$Date, plot.data$Time, " "),'%d/%m/%Y %H:%M:%S')

png('Plot3.png', width=480,height=480)

plot(datetime,plot.data$Sub_metering_1,main='',xlab='',ylab='Energy sub metering',type='l')
lines(datetime,plot.data$Sub_metering_2,col='red')
lines(datetime,plot.data$Sub_metering_3,col='blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
dev.off()