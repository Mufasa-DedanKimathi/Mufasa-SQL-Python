use portfolioproject;
select * from `covidvaccinations p`
order by 3,4;
select * from `coviddeaths p`
order by 3,4;

-- select the data that we are going to be using

select location,date,total_cases,new_cases,total_deaths,population
from `coviddeaths p`
where continent is not null
 order by 1,2;

-- Looking at the total cases vs the total deaths
-- This shows the likelihood of dying if you contract covid in your country

select location,date,total_cases,total_deaths, (total_deaths/total_cases) * 100 as DeathPercentage
from `coviddeaths p` 
where location like '%states'
 order by 1,2;
 
 -- Total cases vs the population
 -- Shows what percentage of the population has contracted covi 19
 
 select location,date,population,total_cases, (total_cases/population) * 100 as DeathPercentage
from `coviddeaths p` 
where location like '%states'
 order by 1,2;
 
 -- Looking at countries with highest rates of infections compared to population
 
 select location,population,max(total_cases) as highestinfection,max((total_cases/population)) * 100 as Rates_of_infections
from `coviddeaths p` 
group by location,population
 order by Rates_of_infections desc;
 
 
 -- Showing countries with highest death count per population

select location,max(cast(total_deaths as float)) as TotalDeathcount
from `coviddeaths p`
where continent is not null
 group by location
 order by  TotalDeathcount desc;
 
 -- Let's break things down by continent
 
 select continent,max(cast(total_deaths as float)) as TotalDeathcount
from `coviddeaths p`
where continent is not null
group by continent
order by  TotalDeathcount desc;

-- Showing continents with the highest death count per population

 select continent,max(cast(total_deaths as float)) as TotalDeathcount
from `coviddeaths p`
where continent is not null
group by continent
order by  TotalDeathcount desc;

-- Global View

select sum(new_cases) as total_cases, sum(cast(new_deaths as float)) as total_deaths,
sum(cast(new_deaths as float))/sum(new_cases)* 100 as death_percentage
from `coviddeaths p`
where continent is not null
-- group by date
order by 1,2;


select * from  `covidvaccinations p`
order by 1,2 desc;
use portfolioproject;

select * from
`coviddeaths p` dea join `covidvaccinations p` vacc on 
dea.location = vacc.location and dea.date = vacc.date;

-- Looking at the total population Vs Vaccination
-- CTE


with popvsvac (continent,location,date,populatio,new_vaccinations,Rollingpeoplevaccinated)
as (
select dea.continent, dea.location, dea.date, dea.population, vacc.new_vaccinations,
sum(cast(vacc.new_vaccinations as float)) over (partition by dea.location order by dea.location,
dea.date) as Rollingpeoplevaccinated 
 from `coviddeaths p` dea join `covidvaccinations p` vacc on 
dea.location = vacc.location and dea.date = vacc.date
where dea.continent is not null
)

select * , (Rollingpeoplevaccinated/population)*100
from popvsvac; 










