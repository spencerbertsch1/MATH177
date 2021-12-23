# demo r script 
# spencer bertsch 
# December 2021

# get the working directory 
wd <- getwd()
print(wd)

# set the working directory 
setwd('/Users/spencerbertsch/Desktop/dev/CS/MATH177')

df <- read.csv('assignment0/demo_data/stateData.csv')

# subset the data by one of the columns 
northeast_states <- subset(df, state.region == 1)

# subset by more than one field
northeast_states2 <- df[((df$state.region == 1) & 
                           (df$population > 1000) & 
                           (df$income > 1000)), ]

# print('something')

