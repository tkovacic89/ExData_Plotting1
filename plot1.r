source("prep.r")

dat <- prep_data_set()

png(file = "plot1.png")

hist(dat$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kW)",
     col="red")
     
dev.off()