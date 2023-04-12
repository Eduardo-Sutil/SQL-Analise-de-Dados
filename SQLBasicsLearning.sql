-- Consulta geral com a primeira tabela

SELECT * FROM PortfolioProject..CovidDeaths

-- CONSULTA COM AS TABELAS JULGADAS MAIS IMPORTANTES AT� O MOMENTO

SELECT location,date, total_cases,new_cases, total_deaths, population
FROM PortfolioProject..CovidDeaths
order by 1,2

-- CONSULTA TOTAL DE CASOS X TOTAL DE MORTES

SELECT location,date, total_cases,new_cases, total_deaths, population, (total_deaths/total_cases)*100 as DeathPercentage
FROM PortfolioProject..CovidDeaths
-- Where location like 'Brazil'
order by 1,2

-- CONSULTA TOTAL DE CASOS X POPULA��O

SELECT location,date, total_cases,new_cases, population, (total_cases/population)*100 as InfectedPeoplePercentage
FROM PortfolioProject..CovidDeaths
order by 1,2


-- Buscando por pa�ses com a maior taxa de infec��o por COVID

SELECT location, population, MAX(total_cases) as HighInfectionCases, Max(total_cases/population)*100 as InfectedPeoplePercentage
FROM PortfolioProject..CovidDeaths
Group by location, population
order by InfectedPeoplePercentage desc

-- Buscando por pa�ses com maior taxa de mortes por popula��o

SELECT location, Max(total_deaths/population)*100 as DeathRatePercentage
FROM PortfolioProject..CovidDeaths
WHERE continent is not null
Group by location
order by DeathRatePercentage desc