# Create the Strict_state dataframe with the sum of aaa within each bbb
Strict_state <- data %>%
  group_by(bbb) %>%
  summarise(sum_aaa = sum(aaa)) %>%
  ungroup()  # Ungroup to remove the grouping structure

# View the result
print(Strict_state)
