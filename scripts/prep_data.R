#create a EU metaweb by 
  #complie all interactions in a single file from
    #safenet 
    #Alham
    #Globi: https://github.com/Big-Bee-Network/global-bee-interaction-data
    #Literature: https://github.com/Big-Bee-Network/bee-interaction-database
  #transform it into a matrix
  #Plot it nicely (if this is possible?)


#create the structure of Plants and pol to be considered:-----
#Polinators: Bee + sirphids 
#Pollinators: Bombilids + beetles? Skip?
#Plants: ??


#start by reading SafeNet data----
#Ideally from the repo once public. Now I made a copy in my personal computer

#TODO: read all file names to loop.
temp <- readRDS("scripts/temp_data/Clean_data/1_Bartomeus.rds")
#data is in a list
str(temp)


#Read UMONS data----
mons <- read.csv("scripts/temp_data/Network_data_Umons_27_III_2023_V1.csv")
head(mons)
#need to recover pol names (most in caps and with subspecies)
#Sex and N seems easy
#Date is DAT1 and 2? 
#Plant (unify)
#Lat/long and Topo, Loc


#Globi----






