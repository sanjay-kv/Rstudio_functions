## Loading Data in R

```
rawdata = read.delim("file.txt", sep="\t", header =TRUE)
head(rawdata)
```

Maybe all rows or col may not needed so need to filter data, In this case it will return all the value where **name =sanjay** from the entire table.

```
new_rawdata = subset(rawdata,name=sanjay )
```

The above only applicable to filter the data from the single col, **What if the select multiple col?** you can also do piping to make the code more human readable.

```
col = c("col1", "col2","col3")
new_col = subset(rawdata, select=col)
head(new_col)
```

To find all the column start with specific alphabet

```
new_col = substr(colnames(rawdata),1,1)=="Q"
print_data=rawdata[, new_col]
colnames(rawdata)
```

## Two Sided T Test

`pt` is the Distribution function in R:

**df** = degree of freedom **(n1+n2-2)**

**q =** Value of Test Statistic (Even if the Test Statistics value is -ve we will take the absolute value (+ve values only))

```
//pt (q, df, lower.tail =FALSE)
pt(3.102, 18, lower.tail=FALSE)*2 
```

As per the `Pvalue` we need to compute 2 side so multiply by 2, if the **T distribution is Symmetric**

### Finding critical value

```
//qt(p,df)
qt(0.975,18)  or qt(0.025.18, lower.tail=FALSE)
```

### Data Transformation Packages

`dpylr = tidyverse`

To install the package Type `install.packages("dplyr")`

To load extra package Type `library(dplyr)`  helps to execute, `mutate` `recode`

### Missing Data 

`is.na` used to find the missing Data

