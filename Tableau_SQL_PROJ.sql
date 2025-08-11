
-- ========== USING COVID-19 DATA , CREATING VISUALS USING TABLEAU ========= 


Select SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths )/SUM(New_Cases)*100 as DeathPercentage
From portfolio_project.covid_data_coviddeaths
-- Where location like '%states%'
where continent is not null 
-- Group By date
order by 1,2;


select * from covid_data_coviddeaths;


/*Select location, SUM(new_deaths ) as TotalDeathCount
From portfolio_project.covid_data_coviddeaths
 Where location like -- '%Afgh%' -- and '%Alg%'
  '%bhu%' -- and '%Bol%' and '%cam%'
-- Where continent is null 
-- and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc;
*/


Select continent, SUM(new_deaths ) as TotalDeathCount
From portfolio_project.covid_data_coviddeaths
 Group by continent
order by TotalDeathCount desc;




Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From portfolio_project.covid_data_coviddeaths
-- Where location like '%Afgh%'
Group by Location, Population
order by PercentPopulationInfected desc;


Select Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From portfolio_project.covid_data_coviddeaths
-- Where location like '%afgh%'
Group by Location, Population, date
order by PercentPopulationInfected desc;
