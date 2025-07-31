v1 = c(1, 3, 5, 7, 9)
v2 = c(2, 4, 6, 8, 10)
print("Original vectors:")
print(v1)
print(v2)
print("Combines the said two vectors by columns:")
result = cbind(v1, v2)
print(result)

print("Combines the said two vectors by rows:")

result = rbind(v1, v2)

print(result)