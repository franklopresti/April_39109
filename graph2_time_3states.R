#line graph over time (start week) for 3 states so must add start_week to "data" 


weekly <- data.frame(cbind(data,df$WEEK_START_DATE))   #create ddd dataframe joining the COUNT OF STRICT AND STATE
dddekly Strict score for a county within the state... 
table(aaa,bbb)
table(bbb,aaa)

library(dplyr)
library(ggplot2)

# Filter data to include only "TX", "NY", "CA"
filtered_data <- weekly %>%
  filter(bbb %in% c("TX", "NY", "CA"))

# Summing aaa within each state (bbb) and each date
summed_data <- filtered_data %>%
  group_by(df.WEEK_START_DATE, bbb) %>%
  summarize(sum_aaa = sum(aaa), .groups = 'drop')

# Plotting the line graph
ggplot(summed_data, aes(x =df.WEEK_START_DATE, y = sum_aaa, color = bbb, group = bbb)) + 
  geom_line(size = 1) +  # Line for each state
  geom_point(size = 2) +  # Points for each data point
  xlab("Date") + 
  ylab("Sum of aaa") + 
  ggtitle("Sum of aaa by Date for States TX, NY, and CA") + 
  scale_color_manual(values = c("TX" = "blue", "NY" = "green", "CA" = "red")) +  # Color lines for each state
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability
