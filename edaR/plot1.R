## To avoid duplicate copies of the same file,first check if it exists using an if condition
if (!"loading_data.R" %in% list.files()) {
  setwd("~/Desktop/edaR/")
} 
source("loading_data.R") # refer to the first script that loads the data
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))# breaking the data into 12 equal points
dev.off()