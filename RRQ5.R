Interval_with_maxsteps<-basedata%>%
                        select(interval,steps)%>%
                        na.omit()%>%
                        group_by(interval)%>%
                        summarise(mst=mean(steps))%>%
                        arrange(desc(mst))%>%
                        slice(1:1)


                        