data<-read.csv('../Downloads/I1.csv')
goals_data<-small_data[,1:4]
home_goals<-ddply(goals_data,c("HomeTeam"),summarise,goals_home=sum(FTHG),goals_home_mean=mean(FTHG),away_goals=sum(FTAG),goals_away_mean=mean(FTAG))
away_goals<-ddply(goals_data,c("AwayTeam"),summarise,goals_home=sum(FTHG),goals_home_mean=mean(FTHG),away_goals=sum(FTAG),goals_away_mean=mean(FTAG))
home_goals_mean_header=c('goals_scored_home','average_home_goals_scored','goals_against_home','average_goals_against_home')
home_goals_mean_c=c(mean(home_goals$goals_home),mean(home_goals$goals_home_mean),mean(home_goals$away_goals),mean(home_goals$goals_away_mean))
away_goals_mean_header=c('goals_scored_away','average_away_goals_scored','goals_against_away','average_goals_against_away')
away_goals_mean_c=c(mean(away_goals$away_goals),mean(away_goals$goals_away_mean),mean(away_goals$goals_home),mean(away_goals$goals_home_mean))

home_goals_mean=data.frame(home_goals_mean_header,home_goals_mean_c)
away_goals_mean=data.frame(away_goals_mean_header,away_goals_mean_c);

print (home_goals)
print(away_goals)

print(home_goals_mean)
print(away_goals_mean)
