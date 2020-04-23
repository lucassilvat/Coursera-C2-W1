path <- "C:/Users/Lucas Teixeira/Documents/John Hopkins Data Science Course/Coursera-C2-W1/Data"

filename <- "hw1_data.csv"

fullname <- file.path(path, filename)

dataset <- read.csv(fullname)

colnames(dataset) ##Gives collumns names

dataset[1:2,] ##gives two first rows

nr <- nrow(dataset) ##gives the number of rows

nr

dataset[(nr-1):nr,] ## gives the last two rows

dataset[47,"Ozone"] ##gives value of Ozone from 47th row

missingOzone <- is.na(dataset[,"Ozone"]) ##indicates where there is a missing value

sum(missingOzone) #sum a binnary vector where True indicates where there is a missing value

tableOzone <- dataset[!missingOzone,"Ozone"] ##creates a data frame with only the present values of Ozone

mean(tableOzone) ##calculates mean of present values of ozones

checkOzone <- dataset[,"Ozone"] > 31 ##filter for Ozone

checkTemp <- dataset[,"Temp"] > 90 ##filter for Temp

goodvalues <- complete.cases(dataset[,"Ozone"],dataset[,"Temp"],dataset[,"Solar.R"]) ##indicates where there isn't NA values

filter <- checkTemp & checkOzone & goodvalues ##filter for both

filteredTable <- dataset[filter,] #filter the table

filteredTable

mean(filteredTable[,"Solar.R"]) #calculates means of Solar.R collumn

filterMonth6 <- dataset[,"Month"] == 6

tempMonth6 <- dataset[filterMonth6,"Temp"]

mean(tempMonth6)

filterMonth5 <- dataset[,"Month"] == 5

OzoneMonth5 <- dataset[filterMonth5, "Ozone"]

max(OzoneMonth5, na.rm=T)








