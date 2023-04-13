SELECT * FROM PortfolioProject..vgsales
order by rank

-- Consulta da quantidade de games lançados por ano

SELECT Year, count(Name) as games
FROM PortfolioProject..vgsales
Where year is not null
Group by Year 
order by year

-- Consulta dos video games(Platform) com mais games lançados 

SELECT Platform, count(Name) as games
FROM PortfolioProject..vgsales
Group by Platform
order by games desc

-- Consulta dos gêneros com mais games lançados

SELECT Genre, count(Name) as games
FROM PortfolioProject..vgsales
Group by Genre
order by games desc

-- Consulta das Publishers com mais jogos lançados

SELECT Publisher, count(Name) as games
FROM PortfolioProject..vgsales
Group by Publisher
order by games desc

-- Consulta da média de vendas no Continente Norte Americano separadas por ano

SELECT Year, AVG(CAST(NA_Sales as numeric)) as avgNASales
FROM PortfolioProject..vgsales
Group by Year
order by avgNASales desc

-- Consulta da média de vendas no Continente Europeu separadas por ano

SELECT Year, AVG(CAST(EU_Sales as numeric)) as avgEUSales
FROM PortfolioProject..vgsales
Group by Year
order by avgEUSales desc

-- Consulta da média de vendas no Japão separadas por ano

SELECT Year, AVG(CAST(JP_Sales as numeric)) as avgJPSales
FROM PortfolioProject..vgsales
Group by Year
order by avgJPSales desc

-- Consulta da média de vendas mundial separadas por ano

SELECT Year, AVG(CAST(Global_Sales as numeric)) as avgGlobalSales
FROM PortfolioProject..vgsales
Group by Year
order by avgGlobalSales desc

-- Consulta da média de vendas mundiais separadas por Publishers e a quantidade jogos lançados

SELECT Publisher, AVG(CAST(Global_Sales as numeric)) as avgGlobalSales, COUNT(Name) as games
FROM PortfolioProject..vgsales
Group by Publisher 
order by games desc

