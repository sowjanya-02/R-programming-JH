# R-programming-JH
Three functions are used in this directory to calculate mean,number of complete observations and correlations\.
First function calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors\. 
The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'\. 
Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA\.
Second function reads a directory full of files and reports the number of completely observed cases in each data file.
The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases.
Third one takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0.
