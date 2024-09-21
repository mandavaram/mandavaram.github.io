library(tidyverse)
library(gganimate)

gdp_tidy <- read_csv("./data/Maryland_Annual_Vehicle_Miles_of_Travel.csv")

gdp_formatted <- gdp_tidy %>%
  group_by(year) %>%
  # The * 1 makes it possible to have non-integer ranks while sliding
  mutate(rank = rank(-value),
         Value_rel = value/value[rank==1],
         Value_lbl = paste0(" ",round(value))) %>%
  group_by(County_Name) %>% 
  filter(rank <=10) %>%
  ungroup()

# Animation


anim <- ggplot(gdp_formatted, aes(rank, group = County_Name, 
                fill = as.factor(County_Name), color = as.factor(County_Name))) +
  geom_tile(aes(y = value/2,
                height = value,
                width = 0.9), alpha = 0.8, color = NA) +
  geom_text(aes(y = 0, label = paste(County_Name, " ")), vjust = 0.5, hjust = 1, size = 8) +
  geom_text(aes(y=value,label = Value_lbl, hjust=0, size = 8)) +
  coord_flip(clip = "off", expand = FALSE) +
  scale_y_continuous(labels = scales::comma) +
  scale_x_reverse() +
  guides(color = FALSE, fill = FALSE) +
  theme(axis.line=element_blank(),
        axis.text.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks=element_blank(),
        axis.title.x=element_blank(),
         axis.title.y=element_blank(),
        legend.position="none",
        panel.background=element_blank(),
        panel.border=element_blank(),
        panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),
        panel.grid.major.x = element_line( size=.1, color="grey" ),
        panel.grid.minor.x = element_line( size=.1, color="grey" ),
        plot.title=element_text(size=30, hjust=0.5, face="bold", colour="grey", vjust=-1),
        plot.subtitle=element_text(size=20, hjust=0.5, face="italic", color="grey"),
        plot.caption =element_text(size=20, hjust=0.5, face="italic", color="grey"),
        plot.background=element_blank(),
       plot.margin = margin(2,2, 2, 7, "cm")) +
  transition_states(year, transition_length = 4, state_length = 1, wrap = FALSE) +
  view_follow(fixed_x = TRUE)  +
  labs(title = 'Annual Vehicle Miles in Millions per year : {closest_state}',  
       subtitle  =  "Top 10 Counties",
       caption  = "Data Source: Maryland Traffic Monitor Data") 

# For GIF

animate(anim, 200, fps = 20,  width = 1500, height = 1000, 
        renderer = gifski_renderer("gganim_miles.gif"), end_pause = 15, start_pause =  15) 

# For MP4

animate(anim, 200, fps = 20,  width = 1500, height = 1000, 
        renderer = ffmpeg_renderer()) -> for_mp4

anim_save("animation_miles.mp4", animation = for_mp4 )
