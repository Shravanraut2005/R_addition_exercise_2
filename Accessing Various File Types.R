#1.Load a Csv File 
facbook_data<-read.csv("dataset_Facebook.csv", header=TRUE)
print(head(facbook_data))

#Load an Excel file (LungCap_Dataset.xls) into a dataframe.
#Intsall and load packages
install.packages("readxl")
library(readxl)

#load an excel file
lungcap_data<-read_excel("LungCap_Dataset.xls")
#display first few rows
head(lungcap_data)

#Load a text file seperated by commas
text_data<-read.table("datafile.txt", header=TRUE,sep=",")
#display first few rowa
print(head(text_data))



#2.Display the first 10 rows of each dataset using head().
head(facbook_data,10)
head(lungcap_data,10)
head(text_data,10)


#3.Check the data type of each column in the Titanic dataset
titanic_data<-read.csv("titanic_data.csv",header=TRUE)
str(titanic_data)

#4.Save the Titanic dataset into a new CSV file after filtering only 
#passengers who survived

#filter only passanger who survived
titanic_survivors<-subset(titanic_data,Survived==1)

#save the filtered data to a new csv file
write.csv(titanic_survivors,"titanic_Survivors.csv",row.names=FALSE)

head(titanic_survivors,10)

