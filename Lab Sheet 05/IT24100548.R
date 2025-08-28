setwd('C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24100548')
getwd()


Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

fix(Delivery_Times)

attach(Delivery_Times)

histogram <- hist(Delivery_Time_.minutes., main ="deliver times", breaks = seq(20,70, length=10), right = FALSE)

freq <- histogram$counts

breaks <- histogram$breaks

cum.freq <- cumsum(freq)

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] <- 0
  } else {
    new[i] <- cum.freq[i-1]
  }
}

plot(breaks, new, type = "l",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

cbind(Upper_Boundary = breaks, CumFreq = new)
