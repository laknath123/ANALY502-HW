source("http://www.openintro.org/stat/data/arbuthnot.R")

#Generating a total column--------------------
arbuthnot$total<-arbuthnot$boys+arbuthnot$girls


#ploting--------------------------------------

plot(x = arbuthnot$year,
     y = arbuthnot$boys,type = 'l',
     col='#3734eb',
     xlab = 'Year',
     ylab = 'Number of Children',
     main="Arbuthnot Data",
     ylim = c(2500,20000),
     lwd = 2)
par(new=TRUE)
lines(x = arbuthnot$year,y = arbuthnot$girls,type = 'l',col='#eb345f',lwd=2)
lines(x= arbuthnot$year,y=arbuthnot$total,type = 'l',col='#c603fc',lwd=3)

legend("topleft",
       c("Boys","Girls","Total Children"),
       fill=c("#3734eb","#eb345f","#c603fc")
)



