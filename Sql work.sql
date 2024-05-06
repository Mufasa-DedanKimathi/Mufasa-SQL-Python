use project;
select * from [dbo].[Deathrates];
select (continent) from [dbo].[Deathrates];

##Suicide rates in 2019 Analysis
##Dataset (Suicide rates 2019)


##Change in suicide rate over time

SELECT year, AVG(suicide_rate) as AverageSuicideRate
FROM [dbo].[Deathrates]
WHERE continent = 'Africa'
GROUP BY year
ORDER BY year;


##Suicide rate by sex

SELECT sex, AVG(suicide_rate) as AverageSuicideRate
FROM [dbo].[Deathrates]
GROUP BY sex;

select * from [dbo].[Deathrates];

##Continent-wise Analysis

SELECT continent, AVG([suicide_rate]) as AverageSuicideRate
FROM [dbo].[Deathrates]
GROUP BY continent;


##Country-specific insights


select * from [dbo].[Deathrates];


SELECT country,year, [suicide_rate]
FROM [dbo].[Deathrates]
WHERE country = 'Kenya'


##To identify the top N countries with the highest suicide rates:

select top 10 country,[suicide_rate]
from [dbo].[Deathrates];


