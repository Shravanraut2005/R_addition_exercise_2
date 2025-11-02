#1.From the Titanic dataset: 
# Select only the columns Name, Sex, Age, and Survived.

# Load the Titanic dataset
titanic_data<-read.csv("titanic_data.csv")

#select specific columns
selected_data<-titanic_data[,c("Name","Sex","Age","Survived")]

#show passangers older than 50
passengers_over_50=selected_data[selected_data["Age"]>50]
#display passangers
print(passengers_over_50)

#count number of survivors in each passanger class
survivors_by_class<-aggregate(Survived~Pclass,data=titanic_data,FUN=sum)
#Display survivors by class
print(survivors_by_class)


#2. From the Facebook dataset:
 # - Find the post with the maximum number of likes.
#- Calculate the average number of shares per post.
#- Create a new column Engagement = Likes + Comments + Shares.

#load facebook dataset
facebook_data<-read.csv("dataset_facebook.csv",sep=';')

#Find the post with the maximum number of likes.
max_likes_post<-facebook_data[which.max(facebook_data$like),]
print("post with maximum likes")
print(max_likes_post)

#Calculate the average number of shares per post
avg_Shares<-mean(facebook_data$share,na.rm=TRUE)
print(paste("Average number of shares per post:",round(avg_Shares,2)))

#Create a new column: Engagement = Likes + Comments + Shares
facebook_data$Engagement<-facebook_data$like + facebook_data$comment +facebook_data$share

#display first few rows of updated data set
head(facebook_data)


#3. Using the Lung Capacity dataset:
 # - Select children below age 12.
#- Group by Gender and calculate average Lung Capacity.
#- Find the child with the maximum Lung Capacity.
# Install and load readxl package (if not already installed)
# install.packages("readxl")
library(readxl)

# Load the Lung Capacity dataset
lung_data <- read_excel("LungCap_Dataset.xls")

# Select children below age 12
children_below_12 <- subset(lung_data, Age < 12)
print("Children below age 12:")
print(head(children_below_12))

#Group by Gender and calculate average Lung Capacity
avg_lung_by_gender <- aggregate(LungCap ~ Gender, data = lung_data, FUN = mean)
print("Average Lung Capacity by Gender:")
print(avg_lung_by_gender)

# Find the child with the maximum Lung Capacity
max_lung_child <- lung_data[which.max(lung_data$LungCap), ]
print("Child with Maximum Lung Capacity:")
print(max_lung_child)

