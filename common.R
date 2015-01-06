common <- function() {
	if(!file.exists("data")) {
    		writeLines("Creating data directory...")
    		dir.create(file.path(getwd(),"data"))
	}
  
	##if(!file.exists("data/exdata-data-household_power_consumption.zip")){
    	##	writeLines("Downloading necessary files...")
    	##	fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata data household_power_consumption.zip"
    	##	download.file(fileUrl, destfile ="data/exdata-data-household_power_consumption.zip", method = "curl")
	##}

	if(!file.exists("data/household_power_consumption.txt")) {
		writeLines("Unzipping files...")
		unzip(zipfile = "data/exdata-data-household_power_consumption.zip", exdir = paste(getwd(), "/data", sep = ""))
	} else print("Doesn't exists")

	header <- read.table("data/household_power_consumption.txt", nrows = 1, sep =';', header = FALSE,
		    stringsAsFactors = FALSE)
	epc <- read.table("data/household_power_consumption.txt", skip = 66637, nrows = 2880, sep =';',
		 stringsAsFactors = FALSE, header = FALSE, na.strings = "?")
	colnames(epc) <- header

	epc$Date <- as.Date(epc$Date, format = "%d/%m/%Y")
	##Maybe use chron package
	## epc$Time <- strptime(epc$Time, format = "%H:%M:%S")
}