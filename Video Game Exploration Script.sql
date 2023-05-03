-- Total for Global Sales of games for nintendo
Select *
From `video game sales`.vgsales

-- Sum of all Video Games sold by Nintendo all time

Select sum(vg_Global_Sales*1000000) AS Nintendo_Global_Sales
From `video game sales`.vgsales
where vg_publisher = 'nintendo'

-- Total number of games sold by Nintendo in 2007

Select sum(vg_Global_Sales*1000000) AS Nintendo_Global_Sales_2007
From `video game sales`.vgsales
where vg_publisher = 'nintendo' AND vg_year = 2007

-- Average number of games sold by Microsoft in North America for 2009

Select avg(vg_NA_Sales*1000000) AS Microsoft_Global_Sales_2009
From `video game sales`.vgsales
where vg_publisher = 'microsoft game studios' AND vg_year = 2009

-- All Sales for the popular First person shooter Halo in Europe

Select sum(vg_EU_Sales*1000000) AS Halo_EU_Sales
From `video game sales`.vgsales
where vg_name like '%halo%'

-- Seeing all highest selling from each publisher

Select vg_Publisher, MAX(vg_Global_Sales*1000000) AS HighestGlobalSales
From `video game sales`.vgsales
Group by vg_publisher
order by HighestGlobalSales desc

-- Seeing all highest selling year for each genre

Select vg_genre, vg_year, MAX(vg_NA_Sales*1000000) AS HighestAmericaSales
From `video game sales`.vgsales
Group by vg_genre, vg_Year
order by HighestAmericaSales desc

-- Seeing all highest selling games for Platforms for the year 2010 in Japan

Select vg_platform, MAX(vg_JP_Sales*1000000) AS HighestJapanSales
From `video game sales`.vgsales
where vg_year = 2010
Group by vg_platform
order by HighestJapanSales desc

-- 