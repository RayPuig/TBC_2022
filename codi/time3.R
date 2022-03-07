##########################################################
#
#
#
##############
#[18.03.2021]#
##############

rm(list=ls())

library(joineR)
data(aids)

#DT::datatable(aids)

temp <- subset(aids, select=c(id, time, death, drug, gender, prevOI))
x <- rep(1,nrow(temp))
base <- aggregate(x, temp, sum)
base2<- tmerge(base, base, id=id, endpt = event(time, death))
head(base)

aids2 <- tmerge(base2, aids, id=id, CD4 = tdc(obstime, CD4))
head(aids2)

#modelo <- coxph(Surv(tstart, tstop, endpt) ~ CD4 + drug + gender, data=aids2)
modeloZ <- coxph(Surv(tstart, tstop, endpt) ~ CD4 + drug + gender+ cluster(id), data=aids2)




#summary(modelo)
summary(modeloZ)


aids1obs <- subset(aids, obstime==0)
modelo1obs <- coxph(Surv(time, death) ~ CD4 + drug + gender, aids1obs)
summary(modelo1obs)

cox.zph(modelo)
#
#
######################################################################333