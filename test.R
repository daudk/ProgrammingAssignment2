myfunction <- function() {
	M <- rnorm(100)
	mean(M)
}

second <- function(M) {
	M + rnorm(length(M))
}
