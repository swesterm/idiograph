idiographplot <- function() {
	library(ggplot2)
	return(qplot(rnorm(10000, 100, 15)))
}