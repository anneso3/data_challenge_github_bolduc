
# 0.1 - Libraries ----

library(tidyverse)

# 0.2 - Data ----

Data <- read_csv("_data/fake_electoral_data_qc.csv")

#### ___ ####

# 1 - Nettoyage des données ----

Data_clean <- Data |> 
  rename(id          = ID,
         election    = "Année Électorale",
         genre       = Genre,
         ville       = Ville,
         revenu      = Revenu,
         langue      = Langue,
         age         = "Âge",
         parti       = "Parti Politique",
         pays        = "Pays Naissance",
         ideo        = "Idéologie Gauche-Droite",
         immig       = "Position Immigration",
         langue_ideo = "Position Langue Française"
         )


# Data %>%
#   select(-ID) %>%
#   #filter(`Parti Politique` == "QS") %>%
#   map(janitor::tabyl)
