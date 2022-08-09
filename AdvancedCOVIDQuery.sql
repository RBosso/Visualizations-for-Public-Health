--SELECT * FROM COVID_Project.dbo."'Covid Deaths$'" 

--SELECT * FROM COVID_Project.dbo.CovidVaccinations$

--Shows Diabetes Prevalence and COVID Mortality Rate
SELECT DISTINCT(vac.location) AS "Nations",diabetes_prevalence, MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'COVID_Mortality_Rate' 
FROM COVID_Project.dbo.CovidVaccinations$ AS "vac" JOIN COVID_Project.dbo."'Covid Deaths$'" AS "deaths" 
ON vac.location = deaths.location AND vac.date = deaths.date
WHERE diabetes_prevalence IS NOT NULL AND total_deaths IS NOT NULL
GROUP BY vac.location, diabetes_prevalence HAVING MAX(CAST(total_deaths AS float)) < MAX(total_cases)
ORDER BY diabetes_prevalence desc

--Shows Percent Vaccinated and COVID Mortality Rate
SELECT DISTINCT(vac.location) AS "Nations",MAX(CAST(people_vaccinated AS float))/MAX(population) *100 AS 'Percent_Vaccinated', MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'COVID_Mortality_Rate' 
FROM COVID_Project.dbo.CovidVaccinations$ AS "vac" JOIN COVID_Project.dbo."'Covid Deaths$'" AS "deaths" 
ON vac.location = deaths.location AND vac.date = deaths.date
WHERE people_vaccinated IS NOT NULL AND total_deaths IS NOT NULL AND vac.continent IS NOT NULL
GROUP BY vac.location HAVING MAX(CAST(total_deaths AS float)) < MAX(total_cases)
ORDER BY 'Percent_Vaccinated' desc

--Shows Percent Fully Vaccinated and COVID Mortality Rate
SELECT DISTINCT(vac.location) AS "Nations",MAX(CAST(people_fully_vaccinated AS float))/MAX(population) *100 AS 'Percent_Fully_Vaccinated', MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'COVID_Mortality_Rate' 
FROM COVID_Project.dbo.CovidVaccinations$ AS "vac" JOIN COVID_Project.dbo."'Covid Deaths$'" AS "deaths" 
ON vac.location = deaths.location AND vac.date = deaths.date
WHERE people_vaccinated IS NOT NULL AND total_deaths IS NOT NULL AND vac.continent IS NOT NULL
GROUP BY vac.location HAVING MAX(CAST(total_deaths AS float)) < MAX(total_cases)
ORDER BY 'Percent_Fully_Vaccinated' desc


--Shows GDP Per Capita and COVID Mortality Rate
SELECT DISTINCT(vac.location) AS "Nations",gdp_per_capita, MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'COVID_Mortality_Rate' 
FROM COVID_Project.dbo.CovidVaccinations$ AS "vac" JOIN COVID_Project.dbo."'Covid Deaths$'" AS "deaths" 
ON vac.location = deaths.location AND vac.date = deaths.date
WHERE gdp_per_capita IS NOT NULL AND total_deaths IS NOT NULL AND vac.continent IS NOT NULL
GROUP BY vac.location, gdp_per_capita HAVING MAX(CAST(total_deaths AS float)) < MAX(total_cases)
ORDER BY gdp_per_capita desc

--Shows Human Development Index and COVID Mortality Rate
SELECT DISTINCT(vac.location) AS "Nations",human_development_index, MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'COVID_Mortality_Rate' 
FROM COVID_Project.dbo.CovidVaccinations$ AS "vac" JOIN COVID_Project.dbo."'Covid Deaths$'" AS "deaths" 
ON vac.location = deaths.location AND vac.date = deaths.date
WHERE human_development_index IS NOT NULL AND total_deaths IS NOT NULL AND vac.continent IS NOT NULL
GROUP BY vac.location, human_development_index HAVING MAX(CAST(total_deaths AS float)) < MAX(total_cases)
ORDER BY human_development_index desc

--Shows GDP Per Capita and COVID Mortality Rate
SELECT DISTINCT(vac.location) AS "Nations",gdp_per_capita, MAX(CAST(total_deaths AS float))/MAX(total_cases) * 100 AS 'COVID_Mortality_Rate' 
FROM COVID_Project.dbo.CovidVaccinations$ AS "vac" JOIN COVID_Project.dbo."'Covid Deaths$'" AS "deaths" 
ON vac.location = deaths.location AND vac.date = deaths.date
WHERE gdp_per_capita IS NOT NULL AND total_deaths IS NOT NULL
GROUP BY vac.location, gdp_per_capita HAVING MAX(CAST(total_deaths AS float)) < MAX(total_cases)
ORDER BY gdp_per_capita desc