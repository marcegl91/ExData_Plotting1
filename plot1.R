if(!file.exists("common.R")) {
    		writeLines("ERROR: common.R doesn't exist")
    		return
} else writeLines("Common.R file exists")

source("common.R")
epc <- common()

png(filename = "plot1.png", width = 480, height = 480)

hist(epc$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
