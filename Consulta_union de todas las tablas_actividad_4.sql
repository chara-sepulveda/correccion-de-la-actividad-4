SELECT *
FROM cities, cities_countries_contients, continents, countries
WHERE cities.id = cities_countries_contients.cities_id
AND continents.id = cities_countries_contients.continents_id
AND countries.id = cities_countries_contients.countries_id