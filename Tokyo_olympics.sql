use olympicdb;
select * from tokyoolympics;

#Team with max medals 
select Team,sum(Medal)  as MedalCount
from tokyoolympics 
group by Team 
order by sum(Medal) desc
limit 1;

#Player with max medals 
select Name,sum(Medal),Sex  as MedalCount
from tokyoolympics 
group by Name,Sex 
order by sum(Medal) desc
limit 1;

#count of medals win by male and female players
select sum(Medal)as MedalCount,Sex
from tokyoolympics
group by Sex;

#Total medal count for China in Tug-of-war in year 1998
select Team,Sport,Year,count(Medal)
from tokyoolympics
group by Team,Sport,Year
having Team='China' and Sport='Short Track Speed Skating' and Year=1998;

#Count of Total medals win by Denmark in Summer Season 
select Team,Season,count(Medal)
from tokyoolympics
group by Team,Season
having Team='Denmark' and Season='Summer';

#Female player with max medal in Boxing for Summer 
select sum(Medal),Season,Sport,Sex,Name
from tokyoolympics
group by Season,Sport,Sex,Name
having Season='Summer' and Sport='Boxing'
order by sum(Medal) desc
limit 1;

#Compare Medal count for each Sport for male and female players
select sum(Medal) as TotalMedal,Sport,Sex from tokyoolympics
group by Sport,Sex
order by Sport desc;

#display games in Summer and Winter Season 
select Season,Sport
from tokyoolympics
group by Season,Sport
order by Season;

#compare number of medals for United States in Summer and Winter for Male and Female
select count(Medal) as TotalCount,Season,Sex from tokyoolympics
group by Season,Sex,Team
having Team='United States';

select * from tokyoolympics;

#comapre total medals for Winter and Summer Season 
select count(Medal) as TotalMedals,Season from tokyoolympics
group by Season;

#Find avg age based on Sport,Year,Season
select tokyoolympics.*,round(avg(age) over(partition by Sport,Year,Season),2) as AvgAge
from tokyoolympics;

#cout number of players who have won medal in Rowing for each Team 
select sum(medal) as MedalCount,Name,Sport,Team 
from tokyoolympics
group by Team,Sport,Name,Sport
having Sport="Rowing"
order by sum(medal) desc;


#count the number of medals for each team and each sport
select count(Medal) as MedalCount,Team,Sport from tokyoolympics
group by Team,Sport
order by MedalCount desc;

#count the number of medals for male and female for each team 
select count(Medal) as MedalCount,Team,Sex from tokyoolympics
group by Team,Sex
order by MedalCount desc;

#count the number of medals for different Team at different Age 
select * from tokyoolympics;
select count(Medal) as MedalCount,Team,Age from tokyoolympics
group by Team,Age
order by MedalCount desc;

select * from tokyoolympics;

select * from tokyoolympics;

#count the number of medals for different Year and different Team and different Season 
select count(Medal) as MedalCount,Team,Season,Year from tokyoolympics
group by Team,Season,Year
order by MedalCount desc,Year desc;