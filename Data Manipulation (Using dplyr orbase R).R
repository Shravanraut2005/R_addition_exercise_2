library(dplyr)

# read data
titanic <- read.csv("titanic_data.csv")

# 1 rename cols to lowercase
names(titanic) <- tolower(names(titanic))

# 2 sort by age desc
titanic <- arrange(titanic, desc(age))
head(titanic_sorted)

# 3 age group column
titanic$agegroup <- ifelse(titanic$age < 12, "Child",
                           ifelse(titanic$age <= 18, "Teen",
                                  ifelse(titanic$age <= 59, "Adult", "Senior")))

# 4 mean fare by class & survival
fare_mean <- titanic %>%
  group_by(pclass, survived) %>%
  summarise(mean_fare = mean(fare, na.rm = T))

# 5 facebook avg likes
fb <- read.csv("dataset_Facebook.csv", sep=";")
avg_likes <- fb %>%
  group_by(Type) %>%
  summarise(avg_likes = mean(like, na.rm=T))
print(avg_likes)
