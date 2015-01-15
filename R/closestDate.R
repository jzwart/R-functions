# closest date function 
# JAZ, finds closest datetime to 'searchDate' from a list datetimes in 'dateList'. 
# this is useful for connecting manual measurements with high frequency measurements if you don't want to 
# interpolate between the manual data or downsample the high frequency data

closestDate <- function(searchDate, dateList, roundDown=FALSE) 
  as.POSIXct( sapply( searchDate , function (x) if( roundDown ){ 
    max( dateList[ dateList <= x ] ) } else {
      min( dateList[ dateList >= x])  } 
  ),origin='1970-01-01')
