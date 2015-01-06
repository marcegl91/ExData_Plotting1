if(!file.exists("common.R")) {
    		writeLines("ERROR: common.R doesn't exist")
    		return
}

source("common.R")
common()

hist(epc$Global_active_power, col = "red",
 xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
