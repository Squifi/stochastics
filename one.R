# Project 1

################################## Question 1
# 0 = tails, 1 = heads
n <- 1
nsamples <- 10^4

# Ein wenig bearbeitet an dieser Stelle, 
# war fuer mich logischer explicit nur einen coin toss zu
# simulieren

# sample OMEGA={0:1}=0,1 und wird einmal wdh, braucht man also nicht replicate 
result_one_toss <- sample(0:1,n)

# Hier brauchen wir ein replace im sample ansonsten funktioniert es nicht
# Possibly unfair mapped by the probability
result_n_tosses <- sample(0:1,nsamples,replace=TRUE, c(0.4,0.6))

resultOneBinom = rbinom(nsamples,1,0.6) 


# xlab fuer die x achse, ylab fuer die y achse, main fuer den Titel der Tabelle
hist(result_n_tosses, xlab="Results", ylab="Toss result", main="10^3 wuerfe")
# Doesn't make sense to display => hist(result_one_toss, main="One Toss")
hist(resultOneBinom, xlab="Binomial Toss")


################################## Question 2 a.)

# OMEGA=1:6, druckt eine Liste 1,2,3,4,5,6 ist ganz praktisch
OMEGA_2a <- 1:6
num_of_dice_2a <- 4
N_2a <- 10^5

# simuliere hier lediglich die 4 simultanen Wuerfe
# Wenn ihr den Befehl ohne hist ausfuehrt seht ihr die Tabelle, passt genau auf die Anfrage
toss_four_dice_2a <- replicate(num_of_dice_2a,sample(OMEGA_2a,N_2a,replace=TRUE))

mean_of_relative_frequency_2a <- mean(apply(toss_four_dice_2a,1,function(i) if(i[1]==6 || i[2]==6 || i[3]==6 || i[4]==6) 1 else 0))



################################### Question 2 b.)
OMEGA_2b <- 1:6
num_of_dice_2b <- 2
num_of_events_2b <- 24

# Wenn ihr den Befehl ohne hist ausfuehrt seht ihr die Tabelle, passt genau auf die Anfrage
toss_2b <- function () replicate(num_of_dice_2b,sample(OMEGA_2b,num_of_events_2b, replace=TRUE))

repeat_experiment <- replicate(10^5, toss_2b())

mean_of_relative_frequency_2b <- mean(apply(repeat_experiment,1,function(i) if(is.element(i,6)) 1 else 0))

comparison_2 <- c(mean_of_relative_frequency_2a, mean_of_relative_frequency_2b)
print("For 2a the probability is: ")
print(comparison_2[1])
print("and for 2b:") 
print(comparison_2[2])


################################ Question 3.)

lottery_numbers <- c(2,16,5,20,7,5)
lottery <- function() sample(1:49,6,replace=FALSE)

have_i_won_something <- replicate(10^4,sum(is.element(lottery(),lottery_numbers)))

print("Die Wahrscheinlichkeiten von keinen richtigen =1 bis 6 richtige = 7")
print(lapply(0:6, function(i) mean(is.element(have_i_won_something,i))))

hist(have_i_won_something, main="Aufgabe 3", xlab="# of correct guesses", ylab="How many times");


