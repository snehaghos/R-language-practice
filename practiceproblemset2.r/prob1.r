sales <- read.csv("E:/toRead/top3_products_by_revenue.csv")
sales <- na.omit(sales)
sales$Revenue <- sales$Unit * sales$Price
agg <- aggregate(Revenue ~ Product, data=sales, sum)
result <- head(agg[order(-agg$Revenue), ], 3)
print(result)