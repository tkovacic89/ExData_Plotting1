source("prep.r")

dat <- prep_data_set()

png(file = "plot4.png")

# because my system time is not in English...
Sys.setlocale("LC_TIME", "English")

par(mfrow = c(2, 2))

# plot 1, 1
plot(dat$DateTime, dat$Global_active_power,
     main = NA,
     xlab = NA,
     ylab = "Global Active Power (kW)",
     type = "l")

# plot 1, 2
plot(dat$DateTime, dat$Voltage,
     main = NA,
     xlab = "date/time",
     ylab = "Voltage",
     type = "l")
    
# plot 2, 1
plot(dat$DateTime, dat$Sub_metering_1,
     main = NA,
     xlab = NA,
     ylab = "Energy sub metering",
     type = "l")

points(dat$DateTime, dat$Sub_metering_2,
     type = "l",
     col = "red")
     
points(dat$DateTime, dat$Sub_metering_3,
     type = "l",
     col = "blue")

legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = c(1, 1, 1),
       bty = "n")

# plot 2, 2
plot(dat$DateTime, dat$Global_reactive_power,
     main = NA,
     xlab = "date/time",
     ylab = "Global Reactive Power (kW)",
     type = "l")    
     
dev.off()