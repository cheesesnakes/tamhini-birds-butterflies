# supplementary materials

## Species list

habitat <- abn%>%
  left_join(transects, by = c("Transect"))%>%
  group_by(Study, Taxa, Habitat, Specific.Epithet)%>%
  # calculating abundance of each species in each habitat type
  summarise(n = sum(Abundance, na.rm = T))%>%
  group_by(Study, Taxa)%>%
  mutate(N = sum(n), # total number of indviduals encountered 
         rel.prop = n/N)%>%
  dplyr::select(-c(n, N))%>%
  spread(Habitat, rel.prop)

aves <- abn%>%
  filter(Taxa == "Birds")%>%
  distinct(Common.Name, Specific.Epithet)%>%
  left_join(diet)%>%
  distinct(Common.Name, Specific.Epithet, Guild)%>%
  left_join(habitat)

leps <- abn%>%
  filter(Taxa == "Butterflies")%>%
  distinct(Common.Name, Specific.Epithet)%>%
  left_join(host)%>%
  distinct(Common.Name, Specific.Epithet, Guild)%>%
  left_join(habitat)

spec <- full_join(leps, aves)

write.csv(spec, "./Figures and Tables/species_list.csv", row.names = F)  
