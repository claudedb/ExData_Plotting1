## Read Data
##This assumes that the data file is the working directory
all.data<-read.table('household_power_consumption.txt',header=TRUE,sep=';',dec='.',na.strings = '?')

#Subset the data to use only the days mentionned
#in the instruction
plot.data<-subset(all.data,all.data$Date=='1/2/2007' | all.data$Date=='2/2/2007')

#Set the png file
png('Plot1.png',width=480, height=480)

#Create histogram with title and axis labels
hist(plot.data$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',ylab='Frequency',col='red')
dev.off()
