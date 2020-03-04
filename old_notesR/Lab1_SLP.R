#practicing using R as a calculator
3+3
3*3
3+3/3
(3+3)/3
log (10)
exp(2)
3^3
2^2
sqrt (9)
abs (1-7)
#practice with numerics
x=3.5
x
sqrt (x)
#practice with integers
x=3.33
y=as.integer (x)
y
#practice with logical
x=1;y=2
z=x>y
z
x=TRUE;y=FALSE
x&y
x|y
!x
#practice with character
x="atgaaa"
y="ttttga"
x
x+y
dna=paste(x,y)
dna
#practice with complex
x=1+2i
x
#practice with vectors
x<-c(1,10,100)
x
x*2
sum (x)
sort (x)
max (x)
length (x)
x<-c(1,10,100)
y<-c(1,2,3)
x*y
codons<-c("aug", "uau", "uga")
codons
#practice with simple graphs
RNA_levels<- c(7,28,100,201,208)
barplot(RNA_levels)
#exercise 1
x=2;y=8
sum(x,y)
y-x
x-y
x*y
x/y
y/x
#exercise 2
x=3.5;y=5
(x^5)>y^4
#exercise 3
x<-c(211, 62, 108, 43, 129)
sum(x)
x/(sum(x))
#exercise 4
x<-c("a", "t", "c", "g")
sort(x)
