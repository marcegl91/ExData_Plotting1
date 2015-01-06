if(!file.exists("common.R")) {

    		writeLines("ERROR: common.R doesn't exist")

    		return

}



source("common.R")

common()



## Because English is not my main language (only tested in Microsoft Windows)

##Sys.setlocale("LC_TIME", "English")



plot(weekdays(epc$Date), Global_active_power) 
