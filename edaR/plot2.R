#check to prevent multiple similar files and find a source for loading data
if (!"loading_data.R" %in% list.files()) {
  setwd("~/Desktop/edaR/")
} 
source("loading_data.R") #will load the data
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()