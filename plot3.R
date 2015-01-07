if(!file.exists("common.R")) {
                writeLines("ERROR: common.R doesn't exist")
                return
} else writeLines("Common.R file exists")

source("common.R")
epc <- common()                                                                                                         
png(filename = "plot3.png", width = 480, height = 480)

plot(epc$Time, epc$Sub_metering_1, pch = 15, type= "l", xlab = "", ylab = "Enery sub metering")
points(epc$Time, epc$Sub_metering_2, col = "red", type = "l", pch = 15)
points(epc$Time, epc$Sub_metering_3, col = "blue", type = "l", pch = 15)
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
