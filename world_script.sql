USE world;

# Retrieve all of the information from table city
select * from city;

# Retrieve all of the information from table country
select * from country;

# How many records city has 
select count(*) from city;
select count(*) from country;

# Get set of records matching some criteria population more than 7 million
select * from city where Population>7000000;

# Get Name and head of state name where population more than 5 million and life expectancy 70
select Name, HeadofState from country
where population>5000000 and LifeExpectancy>70;

# List Name and Population fields from country table that are Caribbean region and population>9000000
select Name, Population from country
where region='Caribbean' and Population>9000000;

# Make it descending
select Name, Population from country
where region='Caribbean' and Population>8000000
order by Population desc;

#Give the name and the per capita GNP for those countries a population of at least 200 million and having GNPper capota atleast .005
select Name, GNP/Population as GNPperCapita from country 
where Population>=200000000
having GNPperCapita>.005;

# Show the name and population for France, Germany, Italy
select Name, Population from country 
where name in ('France','Germany','Italy');

#A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million. Show the countries that are big by area or big by population. Show name, population and area.
select Name, Population, SurfaceArea from country
where SurfaceArea>3000000 or Population>250000000
order by Population desc;

# The name of three countries which are least populated among the countries which have at least 40,0000 people
select Name, Population from country
where Population>40000
order by Population limit 3;

# Search for population in the last table where Name contains ‘U.S.’
select Name, Population from country
where Name like '%U.S.%';

# Search for records in the Country table where the head of state’s name 'bush'
select Name, HeadofState from country
where HeadofState like '%bush%';

# Search for records in the Country table where the head of state’s name end with 'II'
select Name, HeadofState from country
where HeadofState like '%II';

# Search for records in the Country table where the head of state’s name ends with ‘i’, 
select Name, HeadofState from country
where HeadofState like '%i';

# And the country name starts with a ‘U’. 
select Name, HeadofState from country
where Name like 'U%';

# Select the country with minimum population
select Name, Population from country
order by Population limit 1;

# Select the city name with maximum population
select Name, Population from country
order by Population desc limit 1;


#Select from two table by matching their primary keys
select city.Name, countrylanguage.Language from city, countrylanguage
where city.CountryCode=countrylanguage.CountryCode





