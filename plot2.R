if(!file.exists("common.R")) {
                writeLines("ERROR: common.R doesn't exist")
                return
} else writeLines("Common.R file exists")

source("common.R")
epc <- common()                                                                                                         
png(filename = "plot2.png", width = 480, height = 480)

plot(epc$Time, epc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)") 
dev.off()
