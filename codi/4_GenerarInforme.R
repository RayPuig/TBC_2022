######################
# GENERAR INFORME   #
#####################
#
#10.03.2022
#
#17.2.2022#
#############
#[27.9.2021]#
#[12.4.2021]#
#[31.3.2021]#
############
#18:00

# el que he caanviat del TBC del jordi.Real

#################################################################################
#1_lectura_TBC.Rmd
#library("heaven",lib.loc="C:/Users/Ramon/Desktop/llibreria_R/heaven_2018")
#
#C:\Users\38122893W\Desktop\llibreria_R\heaven_2018


# fer-ho: 
#install.packages("remotes")
#remotes::install_github("tagteam/heaven")



#library("heaven",lib.loc="C:/Users/38122893W/Desktop/llibreria_R/heaven_2018")

library("heaven")



#################################################################################
#3_analisis_TBC.Rmd
#recode_to_missings funcion   9.3.2021  
# if else   changued to   ifelse    9.3.2021  #
#
#dadesmodel<-modelcomplet$resum_crrsc %>% 
#  mutate(id=n():1,Categoria=stringr::str_sub(var,1,30)) %>% 
#  dplyr::select(id,Categoria,HR,`Li95%CI`,`Ls95%CI`,'p-value')%>%
#  filter(Categoria!="Origin.None")%>%
#  filter(Categoria!="SBP.None")%>%
#  filter(Categoria!="DBP.None")%>%
#  filter(Categoria!="BMI.None")
#################################################################################


############
##poblacio##
############

rm(list=ls())
#gc()

library("heaven")


metode="dinamica2"
rmarkdown::render("./codi/1_lectura_TBC.Rmd",params = list(metode=metode,cas_com_controls=TRUE))
rmarkdown::render("./codi/2_preparacio_TBC.Rmd",params = list(metode=metode))



###########   Generar informe 
#subtitul="Cohorte DINÁMICA: Controles sin reemplazo"
#rmarkdown::render("./codi/3_analisis_TBC.Rmd", 
#                  output_file = paste0("informe_Cohort_Din_Pob1_",Sys.Date()),
#                  output_dir = "codi/informes",
#                  params=list(metode=metode,subtitul=subtitul, test=FALSE),
#                  envir = parent.frame() # Truc per que render dins funció no peti 
#)


###########   Generar informe 
#subtitul="Cohorte DINÁMICA: Controles sin reemplazo"
#rmarkdown::render("./codi/3_analisis_TBC2.Rmd", 
#                  output_file = paste0("informe_Cohort_Din_Pob2_",Sys.Date()),
#                  output_dir = "codi/informes",
#                  params=list(metode=metode,subtitul=subtitul, test=FALSE),
#                  envir = parent.frame() # Truc per que render dins funció no peti 
#)




###########   Generar informe 
subtitul="Cohorte DINÁMICA: Controles sin reemplazo"
rmarkdown::render("./codi/3_analisis_TBC2B.Rmd", 
                  output_file = paste0("informe_Cohort_Din_Pob2_",Sys.Date()),
                  output_dir = "codi/informes",
                  params=list(metode=metode,subtitul=subtitul, test=FALSE),
                  envir = parent.frame() # Truc per que render dins funció no peti 
)



#JOSEP--->Taula Baseline characteristics of the study variables between diabetics with and without TB!!


###########   Generar informe 
#subtitul="Cohorte DINÁMICA: Controles sin reemplazo"
#rmarkdown::render("./codi/3_analisis_TBC3.Rmd", 
#                  output_file = paste0("informe_Cohort_Din_Pob3_",Sys.Date()),
#                  output_dir = "codi/informes",
#                  params=list(metode=metode,subtitul=subtitul, test=FALSE),
#                  envir = parent.frame() # Truc per que render dins funció no peti 
#)






#03.03.2022



##########
##mostra##
##########


rm(list=ls())
#gc()

library("heaven")

metode="dinamica2"
rmarkdown::render("./codi/1_lectura_TBC.Rmd",params = list(metode=metode,cas_com_controls=TRUE))
rmarkdown::render("./codi/2_preparacio_TBC.Rmd",params = list(metode=metode))

#

#gc()
###########   Generar informe 
metode="dinamica2"
subtitul="Cohorte DINÁMICA: Controles sin reemplazo una MUESTRA!"
rmarkdown::render("./codi/3_analisis_TBC2B.Rmd", 
                  output_file = paste0("informe_Cohort_Din_Muestra_",Sys.Date()),
                  output_dir = "codi/informes",
                  params=list(metode=metode,subtitul=subtitul, test=TRUE),
                  envir = parent.frame() # Truc per que render dins funció no peti 
)

#gc()
###########   Generar informe 
#metode="dinamica2"
#subtitul="Cohorte DINÁMICA: Controles sin reemplazo una MUESTRA!"
#rmarkdown::render("./codi/3_analisis_TBC3.Rmd", 
#                  output_file = paste0("informe_Cohort_Din_Muestra2_",Sys.Date()),
#                  output_dir = "codi/informes",
#                  params=list(metode=metode,subtitul=subtitul, test=TRUE),
#                  envir = parent.frame() # Truc per que render dins funció no peti 
#)