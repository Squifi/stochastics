# Project 1

# Question 1
# 0 = tails, 1 = heads
firstUrn <- c(0,1)
n <- 1
nsamples <- 10000

# Ein wenig bearbeitet an dieser Stelle, 
# war fuer mich logischer explicit nur einen coin toss zu
# simulieren

# sample OMEGA={0:1} und wird einmal wdh, braucht man also nicht replicate 
result_one_toss <- sample(0:1,1)

result_n_tosses <- sample(0:1,nsamples,replace=TRUE)
# result_n_discrete_Tosses <- replicate(nsamples, sample(firstUrn,n,TRUE))

resultOneBinom = rbinom(nsamples,1,0.5) 


# xlab fuer die x achse, ylab fuer die y achse, main fuer den Titel der Tabelle
hist(result_n_tosses, xlab="Results", ylab="Toss result", main="10^3 wuerfe")
hist(result_one_toss, xlab="One Toss")
hist(resultOneBinom, xlab="Binomial Toss")


# Question 2 a.)
hist(rbinom(1,4,0.5))


# Question 2 b.)
hist(rbinom(24,2,0.5))
