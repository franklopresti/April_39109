# create strict 

df$strict <- 0

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
