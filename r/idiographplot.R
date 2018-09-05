idiographplot <- function() {
	library(ggplot2)
	return(qplot(rnorm(20000, 100, 15)))
}