pollutantmean <- function(directory, pollutant, id = 1:332, removeNA = TRUE){
  
  
  sum=0
  length=0
  for (i in id)
  {
    Data <- read.csv(paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep=""))
    subset <- Data[!is.na(Data[[pollutant]]),]
    sum <- sum(subset[[pollutant]],na.rm = removeNA)+sum
    length <- length+length(subset[[pollutant]])
    mean <- sum/length   
  }
  mean
  
}
