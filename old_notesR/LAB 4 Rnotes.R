---
  title: "LAB 4"
author: "Shelby Phillips"
date: "2/14/2020"
output: html_document
---
  
  # load libraries
  
```{r}
library(tidyverse)
```


# load files

```{r}
SNPs<- read.table("data/23andMe_example_cat25.txt", header = TRUE, sep = "\t")
SNPs
head(SNPs, n=10)
```

# to adjust figure size

```{r, fig.width = 6, fig.height = 6}
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = genotype, fill = chromosome)) + 
  coord_polar() +
  ggtitle("Total SNPs for each genotype") +
  ylab("Total number of SNPs") +
  xlab("Genotype")
```

# graphic output

```{r, fig.width = 6, fig.height = 6}
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = genotype, fill = chromosome)) + 
  coord_polar() +
  ggtitle("Total SNPs for each genotype") +
  ylab("Total number of SNPs") +
  xlab("Genotype")
pdf("SNP_example_plot.pdf", width=6, height=3)
ggplot(data = SNPs) +
  geom_bar(mapping = aes(x = chromosome, fill = genotype))
dev.off()
```

# plot to PNG

```{r}
ppi <- 300
png("SNP_example_plot.png", width=6*ppi, height=6*ppi, res=ppi)
ggplot(data = SNPs) +
  geom_bar(mapping = aes(x = chromosome, fill = genotype))
dev.off()

```

# load file


# interactive graphs

```{r}
install.packages("plotly")
```


```{r}
library(plotly)
p <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point()
ggplotly(p)
```

```{r}
library(plotly)
ggplotly(
  ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
    geom_point())
```
```{r}
install.packages('DT')
```
```{r}
library(DT)
datatable(iris)
```

### Exercise 1

# Add title and labels for the x and y axis to Lab3 ex1. Color the bars blue

```{r}
data.frame(summary(SNPs$chromosome))
```
```{r}
df <- data.frame(chromosome=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "X", "Y", "MT"), SNPs=c("76909", "77346", "63285", "55017", "56019", "63245", "50965", "49215", "42969", "50322", "47972", "47125", "36078", "30818", "28400", "30167", "26688", "27971", "18533", "23834", "13404", "14100", "26007", "1766", "2459"), stringsAsFactors=FALSE)
summary(df)
str(df)
```
```{r}
ab <- ggplot(data = df) + 
  geom_bar(mapping = aes(x = chromosome, y = SNPs), stat="identity", fill="blue")
ab
ab + ggtitle("SNPs in the human genome")
```

### Exercise 2 

```{r, fig.width=10, fig.height=7}
mycolour <-c("AC" = "BROWN", "AG" = "BROWN", "AT" = "BROWN", "CG" = "BROWN", "CT" = "BROWN", "GT" = "BROWN", "AA" = "BLUE", "CC" = "BLUE", "GG" = "BLUE", "TT" = "BLUE", "A" = "GREEN", "C" = "GREEN", "G" = "GREEN", "T" = "GREEN", "D" = "MAGENTA", "DD" = "MAGENTA", "DI" = "MAGENTA", "I" = "MAGENTA", "II" = "MAGENTA", "--" = "#999999")
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
p <- ggplot(SNPs, aes(SNPs$chromosome, fill = genotype))+
  geom_bar(color="black") +
  ggtitle("Number of SNPs in the human genome") +
  ylab("total number of SNPs") +
  xlab("chromosome number")
p + scale_fill_manual(values= mycolour)
```

### Exercise 3 FIIIIIIIIIIXXXXXX!!!!!!!!!!!!!!!!!!!!!!!!

```{r}
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
ppi<- 300
png("exercise_3.png", width=6*ppi, height=6*ppi, res=ppi)
ggplot(data = SNPs) + 
  geom_bar(mapping = aes( x = chromosome, fill = genotype), position = "dodge", color = "black")
dev.off()
```
![Genotype counts per chromosome](exercise_3.png)

### Exercise 4

```{r}
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
ad <- ggplot(data = SNPs) + 
  geom_bar(mapping = aes( x = chromosome, fill = chromosome), position = "dodge", color = "black") +
  facet_wrap(~genotype, ncol = 2)
ad
ad + ggtitle("Genotype count per chromosome")
```

### Exercise 5 NOT WORKING

```{r}
library(plotly)
ggplotly(
  ggplot(SNPs, aes(chromosome, fill = genotype)) + 
    geom_bar (position = "dodge") +
    facet_wrap(~genotype, ncol= 2) +
    ggtitle("genotypes across chromosome"),
  ylab("genotype counts") +
    xlab("chromosome")
)
```

### Exercise 6 

```{r}
Chromosome_Y <- subset(SNPs, chromosome == "Y")
Chromosome_Y
head(Chromosome_Y, n=10)
```


