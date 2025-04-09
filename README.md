# April_39109
ICPSR 39109 City Tutors Seminar
##  Frank checking in...  we see that California leads the way on strict covid regs....but Texas is 2nd (don't tell them)
![image](https://github.com/user-attachments/assets/44a4f2f0-5700-4cbc-a0ae-edfd282c47e1)
![image](https://github.com/user-attachments/assets/ec7b4a03-ba09-49d3-a4d6-e00567b9afcb)

## now into shapfiles....
# Create a thematic plot
ggplot(merged_shapefile) +
  geom_sf(aes(fill = sum_aaa)) +
  scale_fill_viridis_c(option = "plasma") +  # Customize color scale
  theme_minimal() +
  labs(fill = "sum_aaa", title = "Thematic Map of sum_aaa") +
  theme(legend.position = "right")
![Rplot03](https://github.com/user-attachments/assets/93c2deaa-1a47-40ec-a5f6-4a9932082dbe)
