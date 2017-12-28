prep_data_set <- function() {

    library(lubridate)
    library(dplyr)

    dat <- read.table('household_power_consumption.txt', header = TRUE, sep=';', na.strings = '?')

    dat <- na.omit(dat)

    ddate <- dmy(dat$Date)
    ttime <- hms(dat$Time)

    datetime <- as.POSIXct(ddate + ttime)

    dat$DateTime <- datetime

    start_time <- ymd_hms("2007-02-01 00:00:00")
    end_time <- ymd_hms("2007-02-03 00:00:00")

    dat <- filter(dat, DateTime >= start_time & DateTime < end_time)

return(dat)
}