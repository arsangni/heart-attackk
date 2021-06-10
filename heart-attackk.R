heart <- read.csv(file.choose(), header = TRUE)
heart
x <- heart[1:15, "chol"]
plot(x,type ="o", col = "red", xlab = "gender",ylab = "cholesterol",main = "heart details of male and female cholesterol levels")
y <- heart[1:9, "cp"]
plot(y,type ="o", col = "green", xlab = "age",ylab = "chest pain",main = "chest pain in age:")
z <- heart[1:20, "oldpeak"]
Lables <- z
pie(z,Lables,main = "oldpeak in heart", col = rainbow(length(z)))
A <- heart[1:15, "fbs"]
Lables <- A
pie(A,Lables,main = "oldpeak in heart", col = "red", (length(z)))

b <- heart[1:30, "age"]
c <- heart[1:30, "trtbps"]
barplot(b,c, col = "red", xlab = "age",ylab = "trtbps",main = "heart details:")
b <- heart[,c("cp","age")]
b
boxplot(age ~ cp,data= heart, col = c("red","blue"), xlab = "age",ylab = "cp",main = "heart details:")

sp <- heart[1:21, c("trtbps", "thalachh")]
sp
plot(x= heart$trtbp , y= heart$thalachh,xlab= "trtbps", ylab = "thalachh", main = "thalachh vs trtbps", col = "red")

pdf("heart plot.pdf")
dev.off()
