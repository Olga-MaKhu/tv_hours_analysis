if(!require(pacman)) install.packages(pacman)
pacman::p_load(tidyverse,
               here)

tv_hr_tab <- 
  gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hrs = mean(tvhours, na.rm = T))

write_csv(tv_hr_tab, here("TV_hrs_by_marital.csv"))
