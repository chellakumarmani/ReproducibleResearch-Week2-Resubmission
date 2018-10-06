png("Totalstepseveryday.png", width=480, height=480)
hist(steps_each_day$st,xlab="Total Daily Steps",main= "Total Steps Taken Each Day",breaks=60)
dev.off()
