# April_39109
ICPSR 39109 City Tutors Seminar
## r code used to 
# create strict 
#logical vectors give you true = 1 and false = 0 when we add them....
aaa <-(df$C1_SCHOOL %in% c(1,2,3)) +
(df$C2_WORKPLACE %in% c(1,2,3))+
(df$C3_EVENTS %in% c(3,4))+
(df$C5_PUBLIC_TRANSPO %in% c(1,2,3)) +  
(df$C4_PRIVATE_GATHER %in% c(4))+
(df$C9_GYM %in% c(3))+
(df$C10_RESTAURANT %in% c(4.5))+  
(df$C11_BAR %in% c(3.4,5))+
(df$C12_MOVIE %in% c(2,3))

st#create vector with state names..... 
 bbb <- df$STATE
ddd <- data.frame(cbind(aaa,bbb))   #create ddd dataframe joining the COUNT OF STRICT AND STATE
ddd
#ddd is the unweighted  weekly Strict score for a county within the state... 
table(aaa,bbb)
table(bbb,aaa)

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
