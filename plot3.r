source("prep.r")

dat <- prep_data_set()

png(file = "plot3.png")

# because my system time is not in English...
Sys.setlocale("LC_TIME", "English")

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
     
dev.off()