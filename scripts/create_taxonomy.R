#create master taxonomic files:

#Bees and syrphids----
polBS <- read.csv(file = "scripts/temp_data/Master_bees_syrphids.csv")
head(polBS)
colnames(polBS) #countries to match.
#write.csv(colnames(polBS), "scripts/temp_data/country_tesaurus_init.csv")
#This file form the bases to create manually country_tesaurus.csv

#Buterflies----
#distribution
polBt <- read.delim(file = "scripts/temp_data/Butterfly_distribution.txt",
                    header = T)
head(polBt)
unique(polBt$countryCode) #We need to match this... 
#export to create country_tesaurus.csv
#write.csv(unique(polBt[,c(3,4)]), "scripts/temp_data/country_temp.csv")

#taxonomy
taxBt <- read.delim(file = "scripts/temp_data/Butterfly_taxon.txt",
                   header = T)
head(taxBt) #can be merged by id
  
#Plants----
plants <- read.table("scripts/temp_data/wcvp_distribution.csv", sep="|", 
                     header=TRUE, quote = "", fill=TRUE, encoding = "UTF-8") #laaarge file
head(plants)
unique(plants$continent)
unique(plants$region)
unique(plants$area)
plants2 <- subset(x = plants, subset = continent == "EUROPE")
unique(plants2$region)
unique(plants2$area)
#write.csv(unique(plants2[,c(7,8)]), "scripts/temp_data/country_temp_plants.csv")
#As plants at a bit more coarse resultion e.g. Baltic states, many entries map
#into this items... this should be tracked.
head(plants2)

#merge with taxonomy
taxPl <- read.table("scripts/temp_data/wcvp_names.csv", sep="|", 
                    header=TRUE, quote = "", fill=TRUE, 
                    encoding = "UTF-8") #laaarge file
 
head(taxPl)
unique(taxPl$geographic_area) #descriptive... difficult to use.
#Se pueden unir por plant_name_id
#accepted_plant_name_id might be relevant to resolve synonims.

