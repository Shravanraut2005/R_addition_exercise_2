#read data
titanic=read.csv("titanic_data.csv")
lung=readxl::read_excel("LungCap_Dataset.xls")
fb=read.csv("dataset_Facebook.csv",sep=";")

#1 histogram of age
hist(titanic$Age,main="Age Distribution",xlab="Age",col="lightblue",border="black")

#2 bar chart of pclass vs count
barplot(table(titanic$Pclass),col="orange",main="Passenger Class Count",xlab="Class",ylab="Count")

#3 boxplot of LungCap by Gender
boxplot(LungCap~Gender,data=lung,col=c("pink","lightgreen"),main="LungCap by Gender")

#4 facebook plots
plot(fb$like,fb$comment,main="Likes vs Comments",xlab="Likes",ylab="Comments",col="blue",pch=16)
hist(fb$share,main="Shares Distribution",xlab="Shares",col="lightgray",border="black")

#5 pie chart survivors
surv=table(titanic$Survived)
pie(surv,labels=c("Did not Survive","Survived"),col=c("red","green"),main="Survival Proportion")
