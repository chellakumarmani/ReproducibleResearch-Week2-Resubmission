
revised_steps_everyday<-new_base_data%>%
                        group_by(date)%>%
                        summarise(nst=sum(steps))
png("TotalDailySteps-Revised.png", width=480, height=480)
hist(revised_steps_everyday$nst,main="Total Daily Steps(revised",xlab="Steps",ylab="Frequency",breaks=30)
dev.off()