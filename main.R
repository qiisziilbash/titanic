# This code explores different aspects of titanic event


# requirements ####
requirw(ggplot2)

# read the titanic data
titanic <- read.csv('titanic.csv')


# set the factor variables
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Survived <- as.factor(titanic$Survived)
titanic$sex <- as.factor(titanic$Sex)
titanic$Embarked <- as <- as.factor(titanic$Embarked)


ggplot(titanic, aes(x = Survived)) +
  geom_bar()
