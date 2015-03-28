#reading in data from file, make sure to change this file path
nba <-read.csv("/Users/Moskalyk/RPlayground/Heatmap/ppg2008.csv", sep=",")

#reordering the data by points (least to greatest)
nba <- nba[order(nba$PTS),]

#set the row name equal to the name of each player
row.names(nba) <- nba$Name

#remove the player name
nba <- nba[,2:20]

#format data into a matrix
nba_matrix <- data.matrix(nba)

#create heatmap
nba_heatmap <- heatmap(nba_matrix, Rowv=NA, Colv=NA, scale="column", margins=c(4,1))

#title(main="main title", pos=1)

