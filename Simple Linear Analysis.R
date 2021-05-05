## Linear Regression
##The aim was to evaluate the agreement between HEC
##(in log10 CFU/ml) and a more complex test HGMF (in log10 CFU/ml). Portions of beef were contaminated
##with E. Coli and then each piece was tested by both methods. Data is contained in the file ecoli.txt
##Fetching the Data Ecoli.txt
ecoli =read.table("Data/ecoli.txt", header =TRUE)

#Inspecting Scatterplot
plot(HEC ~ HGMF, data=ecoli)

#Fit a model with HEC as response
ecoli.lm=lm(HEC ~ HGMF, data =ecoli)

#Checking assumptions from the model
par(mfrow =c(1,2))
plot(ecoli.lm, which=1:2)

#identify the outlier
cleanEcoli =ecoli[-18, ]

#refiting the Model + get CI & Prediction intervals
better.ecoli.lm= lm(HEC ~ HGMF, data =cleanEcoli)
summary(better.ecoli.lm)

par(mfrow =c(1,2))
plot(better.ecoli.lm, which=1:2)

#Assumption Satisfied
#Confidence intervals
hgmfgrid =seq(from=-1, to =3, by=0.5)
hgmfgrid
HGMFdat =data.frame(HGMF =hgmfgrid)
HGMFdat

#predictions
predvals = predict.lm(better.ecloi.lm, newdata = HGMFdat, interval = 'prediction')
predvals
confvals = predict.lm(better.ecloi.lm, newdata = HGMFdat, interval = 'confidence')
predvals

ind =which(hgmfgrid ==1)
ind
           predband1= predvals[ind,2:3]
           predband1
           confband1= confvals[ind,2:3]
           confband1
#-------------------------------------------------------------------------------
        #constructing 95% CI for Slope
qt(0.025, 15, lower.tail =FALSE)    #15 is df

#Using this confidence interval test the hypothesis that the slope is 1

           
#cleanEcoli is the R object that contains the data without the outlier.
           x = cleanEcoli$HGMF
           xbar = mean(x)
           n = length(x)
           Sxx = (n - 1) * var(x)
           c(n, xbar, Sxx)

           
