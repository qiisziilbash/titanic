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

# survival rate
ggplot(titanic, aes(x = Survived)) + 
  geom_bar() +
  theme_bw() +
  labs(y = 'Passenger Count', 
       title = 'Titnic survival rate')


# survival rate by sex
ggplot(titanic, aes(x = sex, fill = Survived)) + 
  geom_bar() +
  theme_bw() +
  labs(y = 'Passenger Count', 
       title = 'Titnic survival rate by sex')


# survival rate by class
ggplot(titanic, aes(x = Pclass, fill = Survived)) + 
  geom_bar() +
  theme_bw() +
  labs(y = 'Passenger Count', 
       title = 'Titnic survival rate by class')

# survival rate by sex and class
ggplot(titanic, aes(x = sex, fill = Survived)) + 
  geom_bar() +
  facet_wrap(~ Pclass)+
  theme_bw() +
  labs(y = 'Passenger Count', 
       title = 'Titnic survival rate by sex andclass')


# hist of age of passengers
ggplot(titanic, aes(x = Age)) + 
  theme_bw() +
  geom_histogram(binwidth = 5)
  labs(y = 'Passenger Count', 
       title = 'Titnic age distribution')
  
# survival rate y age
ggplot(titanic, aes(x = Age, fill = Survived)) + 
  theme_bw() +
  geom_histogram(binwidth = 5)
  labs(y = 'Passenger Count', 
       title = 'Titnic age survival rate by age')
  
# survival rate y age
ggplot(titanic, aes(x = Survived, y = Age)) + 
  theme_bw() +
  geom_boxplot() +
  labs(y = 'Passenger Count', 
    title = 'Titnic age survival rate by age')


# survival rate y age
ggplot(titanic, aes(x = Age, fill = Survived)) + 
  theme_bw() +
  facet_wrap(Sex ~ Pclass)+
  geom_density(alpha = .5)
labs(x = 'Age',
     y = 'Survived',
     title = 'Titnic age survival rate by age, sex, class')



# survival rate y age
ggplot(titanic, aes(x = Age, fill = Survived)) + 
  theme_bw() +
  facet_wrap(Sex ~ Pclass)+
  geom_histogram(binwidth = 10)
labs(x = 'Age',
     y = 'Survived',
     title = 'Titnic age survival rate by age, sex, class')