#Statistics
# Author Rageeni

# Hypothesis testing 

HPT.data <- read.csv('Hypothesis_testing.csv')
View(HPT.data)
colnames(HPT.data)
#"Current" "New" #
attach(HPT.data)
# Column New contains New value of sales/day for a particular business while, Current holds daily sales of current 
# Hypothesis 

## 1. H0: mean(current) = mean(new) Ha: mean(current) != mean(New) with 95% confidence level (alpha = 0.05)
biTailedTest = t.test(Current, New, paired = TRUE)
biTailedTest
# Paired t-test
# 
# data:  Current and New
# t = 1.277, df = 39, p-value = 0.2092
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -1.620536  7.170536
# sample estimates:
#   mean of the differences 
# 2.775 
# Conslusion: - As p-value is greater than alpha (0.05), failed to reject null hypothesis. Thus, 
#               the mean of current sale and new sale is statistically same.

## 2. H0: mean(current) <= mean(new) Ha: mean(current) > mean(New) with 95% confidence level (alpha = 0.05)
upperTailedTest = t.test(Current, New, alternative = 'greater', paired = FALSE, conf.level = .95)
upperTailedTest
# Welch Two Sample t-test
# 
# data:  Current and New
# t = 1.3284, df = 76.852, p-value = 0.09399
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
#   -0.7030913        Inf
# sample estimates:
#   mean of x mean of y 
# 270.275   267.500 
# Conslusion: - As p-value is greater than alpha (0.05), failed to reject null hypothesis. Thus, 
#               the mean of current sale and new sale is statistically same.

## 3. H0: mean(current) >= mean(new) Ha: mean(current) < mean(New) with 95% confidence level (alpha = 0.05)
lowerTailedTest = t.test(Current, New, alternative = 'less', paired = FALSE, conf.level = .95)
lowerTailedTest
# Welch Two Sample t-test
# 
# data:  Current and New
# t = 1.3284, df = 76.852, p-value = 0.906
# alternative hypothesis: true difference in means is less than 0
# 95 percent confidence interval:
#   -Inf 6.253091
# sample estimates:
#   mean of x mean of y 
# 270.275   267.500 
# Conslusion: - As p-value is greater than alpha (0.05), failed to reject null hypothesis. Thus, 
#               the mean of current sale and new sale is statistically same.
