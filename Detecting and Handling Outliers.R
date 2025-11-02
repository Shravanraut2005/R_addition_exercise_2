#Boxplot Method

#1. Using the Titanic dataset:
 # - Create a boxplot of Fare and visually identify potential outliers.
#- Create a boxplot of Age separated by Survived (use boxplot(Age ~ Survived, data=Titanic) in R).
#- Which group (Survived/Not Survived) has more spread in ages?

#read titanic data

titanic=read.csv("titanic_data.csv")

#1 boxplot of fare
boxplot(titanic$Fare,main="Boxplot of Fare",col="lightblue",ylab="Fare")

#2 boxplot of age by survival
boxplot(Age~Survived,data=titanic,main="Age by Survival",
        xlab="Survived(0=No,1=Yes)",ylab="Age",col=c("pink","lightgreen"))



#2. Using the Facebook dataset:
 # - Create a boxplot of Likes and identify extreme posts.
#- Draw a combined boxplot of Likes, Shares, and Comments side by side.
#- Which metric has the highest variation?
#read fb data
fb=read.csv("dataset_Facebook.csv",sep=";")

#1 boxplot of likes
boxplot(fb$like,main="Boxplot of Likes",col="orange",ylab="Likes")

#2 combined boxplot of likes, shares, comments
boxplot(fb$like,fb$share,fb$comment,
        names=c("Likes","Shares","Comments"),
        main="FB Metrics Comparison",col=c("skyblue","lightgreen","pink"))

