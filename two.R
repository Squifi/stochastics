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
lines(x,dexp(x,2))


# Aufgabe 3:

n = 10^5
radius = sqrt(rexp(n,.5))
angle = runif(n,0,2*pi)
X1 <- radius * cos(angle)

hist(X1,freq=FALSE)

x <- seq(min(X1), max(X1),.1)
lines(x,dnorm(x))

# Aufgabe 4
SEED <- as.integer(Sys.time())
lcg.recursive <- function(a,b,m,n,x_k) {
	return ((a*x_k+b)%%m)
}

LCG <- function(a,b,m,n,SEED) {
	x_0 <- SEED	
}
		
