#IQR Method
#read titanic data
titanic=read.csv("titanic_data.csv")

#1fare outliers using iqr
q1=quantile(titanic$Fare,0.25,na.rm=T)
q3=quantile(titanic$Fare,0.75,na.rm=T)
iqr=q3-q1
lower=q1-1.5*iqr
upper=q3+1.5*iqr
sum(titanic$Fare<lower | titanic$Fare>upper)   #no. of outliers

#2 age outliers + capping
q1a=quantile(titanic$Age,0.25,na.rm=T)
q3a=quantile(titanic$Age,0.75,na.rm=T)
iqra=q3a-q1a
lowa=q1a-1.5*iqra
uppa=q3a+1.5*iqra
sum(titanic$Age<lowa | titanic$Age>uppa)
titanic$Age[titanic$Age<lowa]=lowa
titanic$Age[titanic$Age>uppa]=uppa

#3 lungcap data outliers
library(readxl)
lung=read_excel("LungCap_Dataset.xls")

q1l=quantile(lung$LungCap,0.25)
q3l=quantile(lung$LungCap,0.75)
iqrl=q3l-q1l
lowl=q1l-1.5*iqrl
uppl=q3l+1.5*iqrl

# detect & remove outliers
outliers=which(lung$LungCap<lowl | lung$LungCap>uppl)
before=mean(lung$LungCap,na.rm=T)
lung_clean=lung[-outliers,]
after=mean(lung_clean$LungCap,na.rm=T)

before;after  #compare averages

