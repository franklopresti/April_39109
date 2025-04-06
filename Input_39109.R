install.packages("haven")  # Run this only once
library(haven)
library(dplyr)

df <- read_dta("C:/Users/frank/Downloads/ICPSR_39109/ICPSR_39109/DS0001/39109-0001-Data.dta")
str(df)
#  https://github.com/your-username/your-repo/blob/main/ICPSR39.dta

#   icpsrdata package developed by Frederick Solt

library(dplyr)

# Assuming your data frame is called df
df %>%
  count(STATE,WEEK_START_DATE)
  
table(df$WEEK_START_DATE,df$STATE)
