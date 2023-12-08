CREATE DATABASE imdb_analysis;
USE imdb_analysis;
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------QUESTIONS-----------------------------------------------------------------

-- How many movvies were  relesed in year 2021 ?
SELECT COUNT(Title) FROM `imdb-movie-data` WHERE year = 2021; 
-- Ans-Not single movie released in 2021

-- Year wise released movies count ?
SELECT COUNT(Title) as movie_relesed_cnt, Year FROM `imdb-movie-data` GROUP BY Year ORDER BY Year DESC;
-- Relese frequency increased YoY with Year 2016 was on top with  highest movie released.alter

-- Years in which more than 10000 movies released ?
SELECT Year, COUNT(Title) FROM `imdb-movie-data` GROUP BY Year HAVING SUM(Title) = 10000;
-- None  of the  year inwhich  10000 movies relesed

-- Years in which more than 100 movies released ?
SELECT Year, COUNT(Title) as movie_relesed_cnt FROM `imdb-movie-data` GROUP BY Year HAVING COUNT(Title) > 100 ORDER BY movie_relesed_cnt DESC;
-- In both years 2015 & 2016 more than 100 movies were released

-- The year in which max movies were released & its count ?
SELECT Year, COUNT(Title) as movie_relesed_cnt FROM `imdb-movie-data` GROUP BY Year ORDER BY Year DESC Limit 2;
-- Maximum movies released in 2016 & that too 195

-- Movies with rating greater than 8.0 & released in year 2016 ?
SELECT year,Rating,Title FROM `imdb-movie-data` WHERE Rating > 8.0 AND Year = 2016 ORDER BY Rating DESC;
-- Total 6 movies released in year 2018 had rating more than 8.0

-- Top 5 Movies with  votes greater than 1M ?
SELECT * FROM `imdb-movie-data` WHERE Votes > 100000 ORDER  BY Votes DESC Limit 5;

-- Details & ratings of Comedy Movies released in 2016 ?
SELECT * FROM `imdb-movie-data` WHERE Genre = "Comedy" AND Year = 2016;