sum(is.na(basedata))

replacewithmean<-function(x) replace(x,is.na(x),mean(x,na.rm = TRUE))
new_base_data<-basedata%>%
               group_by(interval) %>%
               mutate(steps= replacewithmean(steps))

sum(is.na(new_base_data))
