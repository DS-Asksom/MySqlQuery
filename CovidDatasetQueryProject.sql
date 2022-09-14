/*create new datbase for project*/

Create database if not exists Covidproject;

SELECT * FROM covidproject.countrywiserecord; /*from import file*/

/*Top 10 Countries of Most Active Cases*/
select country ,active  from countrywiserecord order by active desc limit 10;

/*Top 10 Countries of Deaths Cases*/
select Country,Deaths  from countrywiserecord order by Deaths desc limit 10;

/*Top 10 Countries of Recovered Cases*/
select Country,Recovered  from countrywiserecord order by Recovered desc limit 10;

/*Countries in WHO Region*/
select distinct country from countrywiserecord;
 
/*number of countries in WHO Region*/ 
SELECT WHO_Region,count(country)
FROM countrywiserecord
GROUP BY WHO_Region
ORDER BY COUNT(Country) DESC;

/*covid active cases region wise*/ 
SELECT WHO_Region,sum(active)
FROM countrywiserecord
GROUP BY WHO_Region
ORDER BY COUNT(Country) DESC;

/*print the name country name highest death*/
select Country from countrywiserecord where Deaths in(select max(Deaths) from countrywiserecord) ;

/*print africa all country record*/
select * from countrywiserecord where WHO_Region="africa";





