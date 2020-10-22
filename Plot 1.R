data<-read.xlsx(file = "household power consumption.xlsx",1)

head(data)
names(data)
as.Date(data$Date)

#Plot 1
head(data)
hist(data$Global_active_power,col = "red",main = "Global Active Power",
     xlab ="Global Active Power (kilowatts)")
png("plot1.png", width=480, height=480)
