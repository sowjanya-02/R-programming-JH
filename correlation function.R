corr <- function(directory,threshold = 0){
  
  getcorr <- function(fname){
    Data <- read.csv(file.path(directory,fname))
    nobs <- sum(complete.cases(Data))
    if (nobs > threshold) {
      
      ans <- cor(Data$sulfate, Data$nitrate, use="complete.obs")
      return(ans)
      
    } 
    
  }
  getcorrs <- sapply(list.files(directory), getcorr)
  getcorrs <- unlist(getcorrs[!sapply(getcorrs, is.null)])
  return (getcorrs)
}