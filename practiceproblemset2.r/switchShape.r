#Switch for Shape Area
shape_area <- function(shape, dim1, dim2 = NULL) {
  switch(shape,
         "1" = pi * dim1 * dim1,
         "2" = dim1 * dim2,
         "3" = dim1 * dim1,
         "Invalid shape")
}
print(shape_area("1", 5) )