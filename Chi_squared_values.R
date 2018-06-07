#This code shows how to reproduce the table of chi-squared values for given
#p-values provided in this website: https://en.wikipedia.org/wiki/Chi-squared_distribution
#The code using sapply() function to generate a table.
#Shows that using in-built functions in a functional programming language like R provides
#a more efficient way of writing code.

p_value<-c(0.95,0.90,0.80,0.70,0.50,0.30,0.20,0.10,0.05,0.01,0.001)
DegreeFreedom<-seq(1,10)

Chisq_values<-sapply(p_value,function(x)sapply(DegreeFreedom, function(y)qchisq(1-x, y)))

rownames(Chisq_values)=DegreeFreedom
colnames(Chisq_values)=p_value
print(round(Chisq_values,3))
    




    
    
  