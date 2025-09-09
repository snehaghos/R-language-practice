# 20 Mixed & Complex R Programming Problems

These problems combine **Data Manipulation, Data Import/Export, Visualization, and Statistics & Modeling**.

---

## Problem 1: Import, Clean & Summarize
**Task:** Import a CSV file `sales.csv` with columns `Date`, `Product`, `Units`, `Price`.  
- Remove missing values  
- Compute total revenue per product  
- Display top 3 products by revenue  

```R
sales <- read.csv("sales.csv")
sales <- na.omit(sales)
sales$Revenue <- sales$Units * sales$Price
agg <- aggregate(Revenue ~ Product, data=sales, sum)
head(agg[order(-agg$Revenue), ], 3)
```
**Explanation:** Combined cleaning (`na.omit`), calculation, and aggregation.

---

## Problem 2: Grouped Visualization
**Task:** Using the `sales` data, plot monthly total revenue with `ggplot2`.  
```R
library(ggplot2)
sales$Month <- format(as.Date(sales$Date), "%Y-%m")
agg_month <- aggregate(Revenue ~ Month, data=sales, sum)
ggplot(agg_month, aes(x=Month, y=Revenue, group=1)) + 
  geom_line() + geom_point()
```
**Explanation:** Combines date manipulation, aggregation, and plotting.

---

## Problem 3: Merge Two Datasets
**Task:** Merge `customers.csv` (CustomerID, Region) with `sales.csv` on `CustomerID`.  
```R
customers <- read.csv("customers.csv")
merged <- merge(sales, customers, by="CustomerID")
head(merged)
```
**Explanation:** Joins sales with customer demographics.

---

## Problem 4: Pivot Table
**Task:** Create a pivot table of total revenue by `Region` and `Product`.  
```R
library(reshape2)
pivot <- dcast(merged, Region ~ Product, value.var="Revenue", fun.aggregate=sum)
pivot
```
**Explanation:** Uses `dcast()` for pivoting.

---

## Problem 5: Outlier Detection
**Task:** Identify customers whose spending is more than 2 SDs above mean.  
```R
cust_spending <- aggregate(Revenue ~ CustomerID, data=sales, sum)
mean_sp <- mean(cust_spending$Revenue)
sd_sp <- sd(cust_spending$Revenue)
outliers <- cust_spending[cust_spending$Revenue > mean_sp + 2*sd_sp, ]
outliers
```
**Explanation:** Uses z-score method to find outliers.

---

## Problem 6: Save & Reload Results
**Task:** Save pivot table (Problem 4) to Excel and reload it.  
```R
library(openxlsx)
write.xlsx(pivot, "pivot.xlsx")
new_pivot <- read.xlsx("pivot.xlsx")
```
**Explanation:** Demonstrates export and re-import.

---

## Problem 7: Logistic Regression
**Task:** Create `HighSpender` column (1 if Revenue > 5000) and predict using `Units` and `Price`.  
```R
sales$HighSpender <- ifelse(sales$Revenue > 5000, 1, 0)
logit <- glm(HighSpender ~ Units + Price, data=sales, family="binomial")
summary(logit)
```
**Explanation:** Applies logistic regression to classify.

---

## Problem 8: Linear Regression with Visualization
**Task:** Model `Revenue` as function of `Units` and visualize regression line.  
```R
lm_model <- lm(Revenue ~ Units, data=sales)
ggplot(sales, aes(x=Units, y=Revenue)) +
  geom_point() + geom_smooth(method="lm")
```
**Explanation:** Combines regression with plot.

---

## Problem 9: Customer Segmentation (Clustering)
**Task:** Perform k-means clustering on customers based on total Units and Revenue.  
```R
cust_data <- aggregate(cbind(Units, Revenue) ~ CustomerID, data=sales, sum)
set.seed(123)
clusters <- kmeans(cust_data[,c("Units","Revenue")], centers=3)
cust_data$Cluster <- clusters$cluster
cust_data
```
**Explanation:** Groups customers into 3 clusters.

---

## Problem 10: Time Series Forecasting
**Task:** Forecast next 6 months revenue using `forecast` package.  
```R
library(forecast)
ts_data <- ts(agg_month$Revenue, frequency=12)
fit <- auto.arima(ts_data)
forecast(fit, h=6)
```
**Explanation:** Uses ARIMA for forecasting.

---

## Problem 11: Hypothesis Test
**Task:** Test if average revenue differs significantly between Region A and B.  
```R
t.test(Revenue ~ Region, data=merged[merged$Region %in% c("A","B"), ])
```
**Explanation:** Applies two-sample t-test.

---

## Problem 12: ANOVA with Visualization
**Task:** Compare mean revenue across multiple regions.  
```R
anova_model <- aov(Revenue ~ Region, data=merged)
summary(anova_model)
boxplot(Revenue ~ Region, data=merged)
```
**Explanation:** ANOVA with supporting visualization.

---

## Problem 13: Correlation Matrix Heatmap
**Task:** Create correlation matrix of numeric columns and visualize as heatmap.  
```R
library(corrplot)
num_data <- sales[, sapply(sales, is.numeric)]
corrplot(cor(num_data), method="color")
```
**Explanation:** Combines correlation analysis and plotting.

---

## Problem 14: Missing Value Imputation
**Task:** Replace missing Price values with mean Price.  
```R
sales$Price[is.na(sales$Price)] <- mean(sales$Price, na.rm=TRUE)
```
**Explanation:** Simple imputation technique.

---

## Problem 15: Export Clean Dataset
**Task:** Save cleaned and merged dataset to JSON.  
```R
library(jsonlite)
write_json(merged, "cleaned_sales.json")
```
**Explanation:** Shows JSON export.

---

## Problem 16: Interactive Visualization
**Task:** Create interactive plot of Revenue by Month using `plotly`.  
```R
library(plotly)
p <- ggplot(agg_month, aes(x=Month, y=Revenue)) + geom_line()
ggplotly(p)
```
**Explanation:** Converts ggplot to interactive.

---

## Problem 17: Principal Component Analysis
**Task:** Perform PCA on numeric features and plot first two components.  
```R
pca <- prcomp(num_data, scale=TRUE)
plot(pca$x[,1:2], col="blue", pch=19, main="PCA")
```
**Explanation:** PCA for dimensionality reduction.

---

## Problem 18: Cross Validation
**Task:** Perform k-fold CV for linear regression model.  
```R
library(boot)
cv_error <- cv.glm(sales, lm_model, K=5)$delta[1]
cv_error
```
**Explanation:** Measures model generalization.

---

## Problem 19: Combine Multiple Sources
**Task:** Combine `sales.csv` and `returns.csv` to calculate net revenue.  
```R
returns <- read.csv("returns.csv")
combined <- merge(sales, returns, by=c("CustomerID","Product"), all.x=TRUE)
combined$NetRevenue <- combined$Revenue - ifelse(is.na(combined$ReturnAmount),0,combined$ReturnAmount)
```
**Explanation:** Data merging + calculation.

---

## Problem 20: Automated Report
**Task:** Generate PDF report of revenue summary using `rmarkdown`.  
```R
library(rmarkdown)
render("report.Rmd", output_format="pdf_document")
```
**Explanation:** Automates reporting workflow.

---

✅ End of 20 Complex Problems
