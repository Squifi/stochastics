# Project 1

# Question 1
# 0 = tails, 1 = heads
firstUrn <- c(0,1)
n <- 1
nsamples <- 10000
resultOneDiscreteToss <- replicate(1, sample(firstUrn,n,TRUE))
result_n_discrete_Tosses <- replicate(nsamples, sample(firstUrn,n,TRUE))

resultOneBinom = rbinom(nsamples,1,0.5) 

par(mfrow=c(1,2))
hist(result_n_discrete_Tosses, xlab="n tosses")
hist(resultOneDiscreteToss, xlab="One Toss")
hist(resultOneBinom, xlab="Binomial Toss")


# Question 2 a.)
hist(rbinom(1,4,0.5))


# Question 2 b.)
hist(rbinom(24,2,0.5))
