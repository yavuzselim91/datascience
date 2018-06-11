x <- 0:6
class(x) #integer 
as.numeric(x) # [1] 0 1 2 3 4 5 6
as.logical(x) # [1] FALSE TRUE TRUE TRUE TRUE TRUE TRUE
as.character(x) # [1] "0" "1" "2" "3" "4" "5" "6"

x <- c("a", "b", "c")
as.numeric(x) # Warning: NAs introduced by coercion [1] NA NA NA
as.logical(x) # [1] NA NA NA
as.complex(x) # Warning: NAs introduced by coercion [1] NA NA NA
