source("prep.r")

dat <- prep_data_set()

png(file = "plot2.png")

# because my system time is not in English...
Sys.setlocale("LC_TIME", "English")

plot(dat$DateTime, dat$Global_active_power,
     main = NA,
     xlab = NA,
     ylab = "Global Active Power (kW)",
     type = "l")
     
dev.off()