-- Query 1. Rename German column names to English aliases


SELECT
     STADTKREIS as city_district,
     RASSE1 as primary_breed,
     RASSE2 as secondary_breed,
     GEBURTSJAHR_HUND as year_of_birth,
     GESCHLECHT_HUND as gender,
     HUNDEFARBE as color
 FROM `project-5006f1dd-9c5e-4f54-99e.dog_analysis.dogs_zurich`


 -- Query 2. How many unique districts are represented?


SELECT
    COUNT (DISTINCT STADTKREIS) as unique_city_district
    FROM `project-5006f1dd-9c5e-4f54-99e.dog_analysis.dogs_zurich`

-- Query 3. What is the distribution of dog breeds?

SELECT
    RASSE1,
    COUNT (*) as breed_count
    FROM `project-5006f1dd-9c5e-4f54-99e.dog_analysis.dogs_zurich`
    Where RASSE1 is not null
    Group by RASSE1
    Order by breed_count DESC
