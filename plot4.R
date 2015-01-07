if(!file.exists("common.R")) {
                writeLines("ERROR: common.R doesn't exist")
                return
} else writeLines("Common.R file exists")

source("common.R")
epc <- common()                                                                                                         
png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

## Plot (1,1)
plot(epc$Time, epc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power") 

## Plot (1,2)
plot(epc$Time, epc$Voltage, type = "l", xlab = "datetime", ylab = "Voltage") 

## Plot (2,1)
plot(epc$Time, epc$Sub_metering_1, pch = 15, type= "l", xlab = "", ylab = "Enery sub metering")
points(epc$Time, epc$Sub_metering_2, col = "red", type = "l", pch = 15)
points(epc$Time, epc$Sub_metering_3, col = "blue", type = "l", pch = 15)
legend("topright", lty = 1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Plot (2,2)
## Needed to show y-axis as image example
par(cex.axis = .97)
plot(epc$Time, epc$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
