str(Titanic)
df <- as.data.frame(Titanic)
head(df)
titanic.row <- NULL
View(Titanic)
#convert data
for(i in 1:4){
  titanic.row <- cbind(titanic.row, rep(as.character(df[,i]), df$Freq))
}
View(titanic.row)
titanic.row <- as.data.frame(titanic.row)
names(titanic.row) <- names(df)[1:4]
dim(titanic.row)
str(titanic.row)
View(titanic.row)
head(titanic.row)
summary(titanic.row)

#install required libraries
install.packages('arules')
install.packages('arulesViz')

library(arules)
#find association rules with default settings
