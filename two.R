# Aufgabe 1
U <- runif(10^5,0,1)
V <- rbinom(10^5, 1, .5)

probability <- .5

bernoulli_dist <- function(k,p) {
	return (p^k*(1-p)^(1-k)) 
}

exercise_1_b <- sapply(U,function(x) if(x>=probability) 1 else 0 )

hist(exercise_1_b)
hist(V)

# Aufgabe 2

lambda <- 2

exercise_2 <- qexp(U,lambda)
hist(exercise_2, freq=FALSE)

x <- seq(0,max(exercise_2),.1)
lines(x,dexp(x))


# Aufgabe 3:
