library(tidyverse)

# raw data

bird_old <- read.csv("./data/Bird Data_1998 - 2001.csv")
bird_new <- read.csv("./data/Bird Data_2016 - 2017.csv")
butterfly_old <- read.csv("./data/Butterfly Data_1998 - 2001.csv")
butterfly_new <- read.csv("./data/Butterfly Data_2016 - 2017.csv")

# bird data with guild info

birds_guilds <- read.csv("./Data/birds_230718.csv")

birds_guilds <- birds_guilds%>%
  select(Species, Guild)%>%
  distinct()

# renaming vars before combining

bird_new <- left_join(bird_new, birds_guilds)%>%
  mutate(Taxa = "Birds")

bird_old <- bird_old%>%
  rename(Transect = Transect.No.,
         Encounter.Time = Time,
         Habitat = LSE.Type,
         Distance.Footsteps = No..of.Footsteps)%>%
  left_join(birds_guilds)%>%
  mutate(Taxa = "Birds")

butterfly_new <- butterfly_new%>%
  rename(Habitat = Landscape.Element,
         Date = Date.,
         Photo.Audio.No. = Photo.No.,
         Remarks = Reamrks
         )%>%
  mutate(Taxa = "Butterflies")

butterfly_old <- butterfly_old%>%
  rename(Habitat = LSE.type,
         Encounter.Time = Time,
         Transect = Transect.ID,
         No..of.Individuals = No.of.Individuals)%>%
  mutate(Distance.Footsteps = as.numeric(Distance.Footsteps))%>%
  mutate(Taxa = "Butterflies")

abundance <- bind_rows(bird_old, bird_new, butterfly_new, butterfly_old)

abundance <- abundance%>%
  select(Date, Transect, Taxa, Species, No..of.Individuals, Distance.Footsteps, Encounter.Time, Habitat,  
         Start.Time, End.Time, Weather, Detection, Guild, Sex, Activity, Photo.Audio.No., Remarks)%>%
  rename(Abundance = No..of.Individuals)

write.csv(abundance, "./Data/Tamhini_birds_butterflies.csv")

# Bird diet data

bird_diet <- read.csv("./Data/Birds_diet.csv")

d <- bird_diet%>%
  mutate(Prey = strsplit(x = Prey.Items, '.', fixed = T))%>%
  unnest()%>%
  select(Common.Name, Specific.Epithet, Guild, Foraging.Type, Prey, Remarks)

write.csv(d, "./Data/birds_prey_long.csv")

