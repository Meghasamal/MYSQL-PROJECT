create database Sky_Sport;

use sky_sport;

show tables;

select * from skysport1 ;
select * from `skysport 2` ;

#2 Write an sql query to show all the UNIQUE team names.
select distinct(team) from  skysport1 ;

#3 Write an SQL query to show name of team which has rank 1 from group 7
select team from skysport1 s where `rank` = 1 and `group` = 7;

#4 Write an sql query to show count of all teams 
select count(team) from skysport1 ;

#5 Write an SQL query to show matches_played by each team
select team,matches_played from skysport1 s;

#6 Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team,wins,matches_played, (wins/matches_played)*100 as wins_percent from skysport1 s; 

#7 Write an SQL query to show which team has maximum goals_scored and their count
select team,goals_scored from skysport1 s where goals_scored = (select max(goals_scored) from skysport1 );

#8 Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team,draws,matches_played ,(draws/matches_played)*100 as draw_percent from skysport1 s; 

#9 Write an SQL query to show which team has minimum goals_scored and their count
select team,goals_scored from skysport1 s where goals_scored = (select min(goals_scored) from skysport1 s2);

#10 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team,losses,matches_played , (losses/matches_played)*100 as losses_percent from skysport1 s order by losses_percent;

#11 Write an SQL query to show the average goal_difference 
select avg(goal_difference) from skysport1 s;

#12 Write an SQL query to show name of the team where points are 0 
select team,points from skysport1 s where points =0;

#13 Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select expected_goal_scored,exp_goal_conceded from skysport1 s where expected_goal_scored < exp_goal_conceded;

#14 Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from skysport1 s where exp_goal_difference between -0.5 and 0.5;

#15 Write an SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from skysport1 s order by exp_goal_difference_per_90 asc;

#16 Write an SQL query to show team which has maximum number of players_used
select team,players_used from `skysport 2` s where players_used = (select max(players_used) from `skysport 2` s2 );

#17 Write an SQL query to show each team name and avg_age in ascending order by avg_age
select team ,avg_age from `skysport 2` s order by avg_age asc;

#18 Write an sql query to show average possession of teams 
select avg(possession) from `skysport 2` s ;

#19 Write a SQL query to show team which has played atleast 5 games
select team,games from `skysport 2` s where games>=5;

#20 Write an SQL query to show all data for which minutes is greater than 600
select * from `skysport 2` s where minutes>600;

#21 Write an SQL query to show team, goals, assists in ascending order by goals
select team , goals , assists from `skysport 2` s order by goals;

#22 Write an SQL query to show team, pens_made, pens_att in descending order by pens_made
select team,pens_made,pens_att from `skysport 2` s order by pens_made desc;

#23 Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 
select team,cards_red,cards_yellow from `skysport 2` s where cards_red =1 order by cards_yellow asc;

#24 Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 
select team,goals_per90,assists_per90, goals_assists_per90 from `skysport 2` s order by goals_assists_per90 desc;

#25 Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90
select team,goals_pens_per90,goals_assists_pens_per90 from `skysport 2` s order by goals_assists_pens_per90 asc;

#26 Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct
select team,shots ,shots_on_target ,shots_on_target_pct from `skysport 2` s where shots_on_target_pct <30 order by shots_on_target_pct asc;

#27 Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team,shots_per90,shots_on_target_per90 from `skysport 2` s where team = 'Belgium';

#28 Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 
select team,goals_per_shot,goals_per_shot_on_target,average_shot_distance from `skysport 2` s order by average_shot_distance desc;

#29 Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 
select team,errors,touches from `skysport 2` s where errors = 0 and touches<1500;

#30 Write an SQL query to show team, fouls which has maximum number of fouls
select team,fouls from `skysport 2` s where fouls =(select max(fouls) from `skysport 2`);

#31 Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team,offsides from `skysport 2` s where offsides<10 or offsides>20;

#32 Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 
select team,aerials_won,aerials_lost,aerials_won_pct from `skysport 2` s order by aerials_won_pct desc;

#33 Write an SQL query to show number of teams each group has!
select `group`,count(team) from skysport1 s group by `group` ;

#34 Write a SQL query to show team names group 6 has
select team from skysport1 s where `group` =6;

#35 Write an SQL query to show Australia belongs to which group 
select `group` from skysport1 s where team = 'Australia'; 

#36 Write an SQL query to show group, average wins by each group
select `group`, avg(wins) from skysport1 s group by `group`;

#37 Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored
select `group` , max(expected_goal_scored) from skysport1 s group by `group` order by max(expected_goal_scored) asc;

#38 Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select `group` , min(exp_goal_conceded) from skysport1 s group by `group` order by min(expected_goal_scored) desc;

#39 Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90
select `group`, avg(exp_goal_difference_per_90) from skysport1 s group by `group` order by avg(exp_goal_difference_per_90) asc;

#40 Write an SQL query to show which team has equal number of goals_scored and goals_against 
select team,goals_scored,goals_against from skysport1 s where goals_scored = goals_against ;

#41 Write an SQL query to show which team has maximum players_used 
select team,players_used from `skysport 2` s where players_used = (select max(players_used) from `skysport 2`);

#42 Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 
select team, players_used, avg_age, games,minutes from `skysport 2` s where minutes between 200 and 500;

#43 Write an SQL query to show all data of group_stats in ascending order BY points
select * from skysport1 s order by points;

#44 Write an SQL query to show ALL UNIQUE team in ascending order by team
select distinct(team) from skysport1 s order by team asc;

#45 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 
select skysport1.`group`, avg(`skysport 2`.avg_age) as avg_avg_age from skysport1 inner join `skysport 2`
on skysport1.team = `skysport 2`.team group by skysport1.`group` order by avg_avg_age desc;

#46 Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.
select skysport1.`group` , sum(`skysport 2`.fouls) as sum_fouls from skysport1 inner join `skysport 2`
on skysport1.team = `skysport 2`.team group by skysport1.`group` order by sum_fouls asc;

#47 Write an SQL query to show total number of games for each group and arrange it in descending order by games. 
select skysport1.`group` , sum(`skysport 2`.games) as sum_games from skysport1 inner join `skysport 2`
on skysport1.team = `skysport 2`.team group by skysport1.`group` order by sum_games desc;

#48 Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 
select skysport1.`group` , sum(`skysport 2`.players_used) as sum_players_used from skysport1 inner join `skysport 2`
on skysport1.team = `skysport 2`.team group by skysport1.`group` order by sum_players_used asc;

#49 Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.
select skysport1.`group` , sum(`skysport 2`.offsides) as sum_offsides from skysport1 inner join `skysport 2` 
on skysport1.team = `skysport 2`.team group by skysport1.`group` order by sum_offsides asc;

#50 Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select skysport1.`group` , avg(`skysport 2`.passes_pct) as avg_passes from skysport1 inner join `skysport 2` 
on skysport1.team = `skysport 2`.team group by skysport1.`group` order by avg_passes desc;

#51 Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select skysport1.`group` , avg(`skysport 2`.goals_per90) as avg_goals from skysport1 inner join `skysport 2` 
on skysport1.team = `skysport 2`.team group by skysport1.`group` order by avg_goals asc;