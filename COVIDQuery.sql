--SELECT * FROM COVID_Project.dbo.['Covid Deaths$'] 

--SELECT MAX(CAST(total_deaths AS float))/MAX(population) * 100 FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'Cuba'
--SELECT MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'China_mortality' FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'China'
--SELECT MAX(CAST(total_deaths AS float))/MAX(population) * 100 FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'United States'
--SELECT MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'US_mortality' FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'United States'
--SELECT MAX(CAST(total_deaths AS float))/MAX(population) * 100 FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'Germany'
--SELECT MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'Germany_mortality' FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'Germany'
--SELECT MAX(CAST(total_deaths AS float))/MAX(population) * 100 FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'Russia'
--SELECT MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'Russia_mortality' FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'Russia'
--SELECT MAX(CAST(total_deaths AS float)) FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'United States'
--SELECT * FROM COVID_Project.dbo.CovidVaccinations$ 

--Calculated percentage of total COVID cases for populations of different nations
SELECT DISTINCT(location) AS 'Countries' , MAX(total_cases)/MAX(population)*100 AS 'Total COVID Percentage' FROM COVID_Project.dbo.['Covid Deaths$'] 
Group by location
order by 'Total COVID Percentage' desc


--Calculated COVID Mortality Rates for populations of different nations
SELECT DISTINCT(location) AS 'Countries' , MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'COVID_Mortality_Rate' FROM COVID_Project.dbo.['Covid Deaths$']
Group by location HAVING MAX(CAST(total_deaths AS float)) < MAX(total_cases)
order by 'COVID_Mortality_Rate' desc


--Calculated percentage of total COVID deaths for populations of different nations
SELECT DISTINCT(location) AS 'Countries' , MAX(CAST(total_deaths AS float))/MAX(population) * 100 AS 'COVID Death Rate' FROM COVID_Project.dbo.['Covid Deaths$'] 
Group by location
order by 'COVID Death Rate' desc

--Calculated total COVID deaths for populations of different nations
SELECT DISTINCT(location) AS 'Countries' , MAX(CAST(total_deaths AS float)) AS 'COVID Deaths' FROM COVID_Project.dbo.['Covid Deaths$'] 
WHERE continent is not NULL
Group by location
order by 'COVID Deaths' desc

--Calculated total COVID deaths for populations of different continents
SELECT DISTINCT(location) AS 'Continents' , MAX(CAST(total_deaths AS float)) AS 'COVID Deaths', MAX(population) AS 'Population', MAX(CAST(total_deaths AS float))/MAX(total_cases)*100 AS 'Mortality Rate'
FROM COVID_Project.dbo.['Covid Deaths$'] 
WHERE continent is NULL
Group by location
order by 'COVID Deaths' desc

--Calculated populations of different nations, in proportion to the total world population
SELECT DISTINCT(location) AS 'Countries' , MAX(population) AS 'Population', 
MAX(population)/(SELECT MAX(population) FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'World') AS 'Percent_of_World_Population'
FROM COVID_Project.dbo.['Covid Deaths$']  
WHERE continent IS NOT NULL
Group by location
order by 'Population' desc

--World Population
SELECT MAX(population) FROM COVID_Project.dbo.['Covid Deaths$'] WHERE location = 'World'

SELECT * FROM COVID_Project.dbo.['Covid Deaths$'] AS deaths JOIN COVID_Project.dbo.[CovidVaccinations$] AS vaccines 
ON deaths.location = vaccines.location and deaths.date = vaccines.date

--Shows Diabetes Prevalance for Different Countries
SELECT DISTINCT(deaths.location) AS 'Nations', diabetes_prevalence FROM COVID_Project.dbo.['Covid Deaths$'] AS deaths JOIN COVID_Project.dbo.[CovidVaccinations$] AS vaccines 
ON deaths.location = vaccines.location and deaths.date = vaccines.date 
order by diabetes_prevalence desc
--WHERE deaths.location = 'Cuba'