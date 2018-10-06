comp<-new_base_data %>%
      mutate(typeofday=ifelse(weekdays(as.Date(date))=="Saturday"
      |weekdays(as.Date(date))=="Sunday","Weekend","Weekdays"))%>%
      group_by(typeofday,interval) %>%
      summarise(mstp=mean(steps))

  ggplot(comp,aes(x=interval,y=mstp,col=comp$typeofday))+
  geom_line()+facet_grid(comp$typeofday~.)+
  xlab("Interval")+ylab("Avg Steps")+
  ggtitle("Comparison ofavg steps in each interval during weekdays and weekends")
