#vectors practice
SNPs <- c ("AA", "AA", "GG", "AG", "AG", "AA", "AG", "AA", "AA", "AA", "AG")
SNPs
#factors practice
SNPs_cat <- factor(SNPs)
SNPs_cat
table(SNPs_cat)
SNPs_cat
plot(SNPs_cat)
as.numeric(SNPs_cat)
#Matrices practice
Day1 <- c(2,4,6,8)
Day2 <- c(3,6,9,12)
Day3 <- c(1,4,9,16)
A <- cbind(Day1,Day2,Day3)
A
Day1 <- c(2,4,6,8)
Day2 <- c(3,6,9,12)
Day3 <- c(1,4,9,16)
b <- rbind(Day1,Day2,Day3)
b 
Day4 <- c(5,10,11,20)
C <- rbind(b,Day4)
C
A*10
A[1]
A[12]
A[ ,c(1,3)]
A[c(2,4), ]
t(A)
#data frames practice
Gene1 <- c(2,4,6,8)
Gene2 <- c(3,6,9,12)
Gene3 <- c(1,4,9,16)
Gene <- c("Day 1", "Day 2","Day 3", "Day 4")
RNAseq <- data.frame(Gene1, Gene2, Gene3, row.names = Gene)
RNAseq
RNAseq$Gene3
plot(RNAseq$Gene1,RNAseq$Gene3)
plot(RNAseq$day,RNAseq$Gene3)
RNAseq$Gene4 <-c(5,10,15,20)
RNAseq
RNAseq[,"gene5"] <-c(1,2,3,3)
RNAseq
RNAseq["Day 4",] <- rbind(10,14,20,22,3)
#checking on object types practice
x=1
str(x)
a="ATGCCCTGA"
str(a)
str(SNPs)
SNPs <- c("AA", "AA", "GG", "AG", "AG", "AA","AG", "AA", "AA", "AA", "AG")
str(SNPs_cat)
Day1 <- c(2,4,6,8)
Day2 <-c(3,6,9,12)
Day3 <-c(1,4,9,16)
B <- rbind(Day1,Day2,Day3)
B<- rbind(Day1,Day2,Day3)
str(B)
Gene1 <-c(2,4,6,8)
Gene2 <-c(3,6,9,12)
Gene3 <-c(1,4,9,16)
Gene <-c("Day1","Day2","Day3","Day4")
RNAseq <- data.frame(Gene1,Gene2,Gene3,row.names = Gene)
str(RNAseq)
SNP_table <- read.table("23andMe_example_cat25.txt", header = TRUE, sep = "\t")
SNP_table
#Getting information on a dataset practice
names(SNP_table)
str(SNP_table)
levels(SNP_table$genotype)
dim(SNP_table)
class(SNP_table)
SNP_table
head(SNP_table, n=10)
tail(SNP_table, n=5)
help(read.table)
SNP_table$chromosome <- as.factor(SNP_table$chromosome)
str(SNP_table)
SNP_table$chromosome <- as.integer(SNP_table$chromosome)
str(SNP_table)
SNP_table_AG <- subset(SNP_table, genotype == 'AG')
SNP_table_AG
table(SNP_table_AG$chromosome)
subset(SNP_table,position>700000 & position < 800000)
#Exercise 1
vector1 <-c(1,3,6,9,12)
vector2 <-c(1,0,1,0,1)
vector1+vector2
vector1-vector2
vector1*vector2
vector1/vector2
#Exercise 2
x <-c(0,1,2,3)
y <-c("aa","bb","cc","dd")
z <-c("aa",1,"bb",2)
str(x)
str(y)
str(z)
#Exercise 3
genotype1 <-c("AA","AA","AG","GG","GG")
genotype2 <-c("AA","AA","GG","GG","GG")
A <-cbind(genotype1,genotype2)
A
genotype1 <-c("AA","AA","AG","GG","GG")
genotype1
genotype1_cat <-factor(genotype1)
genotype1_cat
table(genotype1_cat)
genotype2 <-c("AA","AA","GG","GG","GG")
genotype2
genotype2_cat <-factor(genotype2)
genotype2_cat
table(genotype2_cat)
#Exercise 4
treatment1 <-c(0,1,2,3,4)
treatment2 <-c(0,2,4,6,8)
treatment3 <-c(0,3,6,9,12)
time <-c(0,2,4,6,8)
treatment <-data.frame(treatment1,treatment2,treatment3, row.names = time)
treatment
treatment$time <-c(0, 2, 4, 6, 8)
treatment
plot(treatment$time,treatment$treatment3)
#Exercise 5

