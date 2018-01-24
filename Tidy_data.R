setwd(dir = "Data_Science/Exploratory Data Analysis/")

#import the txt file in "Data" dataset

Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)


#Rename the names of Data dataset and remove the first row

colnames(Data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
Data <- Data[-1,]
df <- subset(Data, Data$Date=="1/2/2007"|Data$Date=="2/2/2007")


#change Factor data type to Date in "Date" column and

# install.packages("dplyr") (if any)
# library(dplyr) (if any)
df <- mutate(df, Date=as.Date(Date, format = "%d/%m/%Y"))

#changing chr vectors to numeric

df$Global_active_power <- as.numeric(df$Global_active_power)
df$Global_reactive_power <- as.numeric(df$Global_reactive_power)
df$Voltage <- as.numeric(df$Voltage)
df$Global_intensity <- as.numeric(df$Global_intensity)
df$Sub_metering_1 <- as.numeric(df$Sub_metering_1)
df$Sub_metering_2 <- as.numeric(df$Sub_metering_2)
df$Sub_metering_3 <- as.numeric(df$Sub_metering_3)
# create anew colum with date and time
df$Datetime <-paste(df$Date, df$Time)
