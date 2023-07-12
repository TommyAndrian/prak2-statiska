a <- c(1,2,-5,0.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) #logical vector
print(a)
print(b)
print(c)


#MATRIKS
cells <- c(3,15,-27,38)
Tommy <- c("R1", "R2")
Andrian <- c("C1", "C2") 
nama_matrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                      dimnames=list(Tommy, Andrian))
print(nama_matrix)

tommy1 <- c(1,2,3,4)
tommy2 <- c("red", "white", "red", NA)
tommy3 <- c(TRUE,TRUE,TRUE,FALSE)
dataku <- data.frame(tommy1, tommy2, tommy3)
names(dataku) <- c("ID","Color","Passed") # variable names 
print(dataku)

data_tommy <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
print (data_tommy)

library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from tommy_excel;"
df <- dbGetQuery(con, myQuery)
library(dplyr)
df<-filter(df,Brick=="No")
print(df)

library(dplyr)
df<-filter(df,Brick=="No"|Neighborhood=="East")
print(df)

library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[tommy]', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from tommy_prakstatis;"
df <- dbGetQuery(con, myQuery)
library(dplyr)
df<-filter(df,Gender=="P")
print(df)
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[tommy]', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from tommy_prakstatis;"
df <- dbGetQuery(con, myQuery)
library(dplyr)
df<-filter(df,Gender=="L")
print(df)

