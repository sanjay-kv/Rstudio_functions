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

