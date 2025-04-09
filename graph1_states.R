# Example data (replace with your actual data)

# Combine into a data frame
data <- data.frame(aaa, bbb)

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Summing aaa within each state (bbb)
summed_data <- data %>%
  group_by(bbb) %>%
  summarize(sum_aaa = sum(aaa))

# Plotting with ggplot2
ggplot(summed_data, aes(x = bbb, y = sum_aaa)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  xlab("State") +
  ylab("Sum of aaa") +
  ggtitle("Sum of aaa within each State") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels if needed
# Plotting with ggplot2
ggplot(summed_data, aes(x = sum_aaa, y = bbb)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  xlab("Sum Strick") +
  ylab("State") +
  ggtitle("Sum of aaa within each State") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels if needed
