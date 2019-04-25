# Project 1

################################## Question 1
# 0 = tails, 1 = heads
firstUrn <- c(0,1)
n <- 1
nsamples <- 10^4

# Ein wenig bearbeitet an dieser Stelle, 
# war fuer mich logischer explicit nur einen coin toss zu
# simulieren

# sample OMEGA={0:1}=0,1 und wird einmal wdh, braucht man also nicht replicate 
result_one_toss <- sample(0:1,1)

# Hier brauchen wir ein replace im sample ansonsten funktioniert es nicht
result_n_tosses <- sample(0:1,nsamples,replace=TRUE)

resultOneBinom = rbinom(nsamples,1,0.5) 


# xlab fuer die x achse, ylab fuer die y achse, main fuer den Titel der Tabelle
hist(result_n_tosses, xlab="Results", ylab="Toss result", main="10^3 wuerfe")
hist(result_one_toss, main="One Toss")
hist(resultOneBinom, xlab="Binomial Toss")


################################## Question 2 a.)

# OMEGA=1:6, druckt eine Liste 1,2,3,4,5,6 ist ganz praktisch
OMEGA_2a <- 1:6
num_of_dice_2a <- 4
N_2a <- 10^5

# simuliere hier lediglich die 4 simultanen Wuerfe
# Wenn ihr den Befehl ohne hist ausfuehrt seht ihr die Tabelle, passt genau auf die Anfrage
toss_dice_2a <- replicate(num_of_dice_2a,sample(OMEGA_2a,N_2a,replace=TRUE))

# Nur plotting
hist(toss_dice_2a, main="Question 2a", xlab="Dice value", ylab="# of throws")


################################### Question 2 b.)
OMEGA_2b <- 1:6
num_of_dice_2b <- 2
num_of_events_2b <- 24

# Wenn ihr den Befehl ohne hist ausfuehrt seht ihr die Tabelle, passt genau auf die Anfrage
toss_dice_2b <- replicate(num_of_dice_2b,sample(OMEGA_2b,num_of_events_2b, replace=TRUE))

hist(toss_dice_2b, main="Question 2b", xlab="Dice value", ylab="# of tosses")
