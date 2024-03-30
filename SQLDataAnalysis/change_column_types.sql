-- -- Changing data type of columns from character varying to bigint
-- ALTER TABLE covid_deaths
-- ALTER COLUMN population TYPE bigint USING CASE WHEN population ~ '^\d+$' THEN population::bigint ELSE NULL END,
-- ALTER COLUMN total_cases TYPE bigint USING CASE WHEN total_cases ~ '^\d+$' THEN total_cases::bigint ELSE NULL END,
-- ALTER COLUMN new_cases TYPE bigint USING CASE WHEN new_cases ~ '^\d+$' THEN new_cases::bigint ELSE NULL END,
-- ALTER COLUMN new_cases_smoothed TYPE bigint USING CASE WHEN new_cases_smoothed ~ '^\d+$' THEN new_cases_smoothed::bigint ELSE NULL END,
-- ALTER COLUMN total_deaths TYPE bigint USING CASE WHEN total_deaths ~ '^\d+$' THEN total_deaths::bigint ELSE NULL END,
-- ALTER COLUMN new_deaths TYPE bigint USING CASE WHEN new_deaths ~ '^\d+$' THEN new_deaths::bigint ELSE NULL END,
-- ALTER COLUMN new_deaths_smoothed TYPE bigint USING CASE WHEN new_deaths_smoothed ~ '^\d+$' THEN new_deaths_smoothed::bigint ELSE NULL END,
-- ALTER COLUMN total_cases_per_million TYPE bigint USING CASE WHEN total_cases_per_million ~ '^\d+$' THEN total_cases_per_million::bigint ELSE NULL END,
-- ALTER COLUMN new_cases_per_million TYPE bigint USING CASE WHEN new_cases_per_million ~ '^\d+$' THEN new_cases_per_million::bigint ELSE NULL END,
-- ALTER COLUMN new_cases_smoothed_per_million TYPE bigint USING CASE WHEN new_cases_smoothed_per_million ~ '^\d+$' THEN new_cases_smoothed_per_million::bigint ELSE NULL END,
-- ALTER COLUMN total_deaths_per_million TYPE bigint USING CASE WHEN total_deaths_per_million ~ '^\d+$' THEN total_deaths_per_million::bigint ELSE NULL END,
-- ALTER COLUMN new_deaths_per_million TYPE bigint USING CASE WHEN new_deaths_per_million ~ '^\d+$' THEN new_deaths_per_million::bigint ELSE NULL END,
-- ALTER COLUMN new_deaths_smoothed_per_million TYPE bigint USING CASE WHEN new_deaths_smoothed_per_million ~ '^\d+$' THEN new_deaths_smoothed_per_million::bigint ELSE NULL END,
-- ALTER COLUMN icu_patients TYPE bigint USING CASE WHEN icu_patients ~ '^\d+$' THEN icu_patients::bigint ELSE NULL END,
-- ALTER COLUMN icu_patients_per_million TYPE bigint USING CASE WHEN icu_patients_per_million ~ '^\d+$' THEN icu_patients_per_million::bigint ELSE NULL END,
-- ALTER COLUMN hosp_patients TYPE bigint USING CASE WHEN hosp_patients ~ '^\d+$' THEN hosp_patients::bigint ELSE NULL END,
-- ALTER COLUMN hosp_patients_per_million TYPE bigint USING CASE WHEN hosp_patients_per_million ~ '^\d+$' THEN hosp_patients_per_million::bigint ELSE NULL END,
-- ALTER COLUMN weekly_icu_admissions TYPE bigint USING CASE WHEN weekly_icu_admissions ~ '^\d+$' THEN weekly_icu_admissions::bigint ELSE NULL END,
-- ALTER COLUMN weekly_icu_admissions_per_million TYPE bigint USING CASE WHEN weekly_icu_admissions_per_million ~ '^\d+$' THEN weekly_icu_admissions_per_million::bigint ELSE NULL END,
-- ALTER COLUMN weekly_hosp_admissions TYPE bigint USING CASE WHEN weekly_hosp_admissions ~ '^\d+$' THEN weekly_hosp_admissions::bigint ELSE NULL END,
-- ALTER COLUMN weekly_hosp_admissions_per_million TYPE bigint USING CASE WHEN weekly_hosp_admissions_per_million ~ '^\d+$' THEN weekly_hosp_admissions_per_million::bigint ELSE NULL END;

-- -- Changing data type of columns from character varying to character
-- ALTER TABLE covid_deaths
-- ALTER COLUMN iso_code TYPE varchar,
-- ALTER COLUMN continent TYPE varchar,
-- ALTER COLUMN location TYPE varchar,
-- ALTER COLUMN date TYPE varchar,
-- ALTER COLUMN reproduction_rate TYPE varchar;


-- Changing data type of columns from character varying to bigint
ALTER TABLE covid_vaccinations
ALTER COLUMN total_tests TYPE bigint USING CASE WHEN total_tests ~ '^\d+$' THEN total_tests::bigint ELSE NULL END,
ALTER COLUMN new_tests TYPE bigint USING CASE WHEN new_tests ~ '^\d+$' THEN new_tests::bigint ELSE NULL END,
ALTER COLUMN total_tests_per_thousand TYPE bigint USING CASE WHEN total_tests_per_thousand ~ '^\d+$' THEN total_tests_per_thousand::bigint ELSE NULL END,
ALTER COLUMN new_tests_per_thousand TYPE bigint USING CASE WHEN new_tests_per_thousand ~ '^\d+$' THEN new_tests_per_thousand::bigint ELSE NULL END,
ALTER COLUMN new_tests_smoothed TYPE bigint USING CASE WHEN new_tests_smoothed ~ '^\d+$' THEN new_tests_smoothed::bigint ELSE NULL END,
ALTER COLUMN new_tests_smoothed_per_thousand TYPE bigint USING CASE WHEN new_tests_smoothed_per_thousand ~ '^\d+$' THEN new_tests_smoothed_per_thousand::bigint ELSE NULL END,
ALTER COLUMN positive_rate TYPE bigint USING CASE WHEN positive_rate ~ '^\d+$' THEN positive_rate::bigint ELSE NULL END,
ALTER COLUMN tests_per_case TYPE bigint USING CASE WHEN tests_per_case ~ '^\d+$' THEN tests_per_case::bigint ELSE NULL END,
ALTER COLUMN total_vaccinations TYPE bigint USING CASE WHEN total_vaccinations ~ '^\d+$' THEN total_vaccinations::bigint ELSE NULL END,
ALTER COLUMN people_vaccinated TYPE bigint USING CASE WHEN people_vaccinated ~ '^\d+$' THEN people_vaccinated::bigint ELSE NULL END,
ALTER COLUMN people_fully_vaccinated TYPE bigint USING CASE WHEN people_fully_vaccinated ~ '^\d+$' THEN people_fully_vaccinated::bigint ELSE NULL END,
ALTER COLUMN total_boosters TYPE bigint USING CASE WHEN total_boosters ~ '^\d+$' THEN total_boosters::bigint ELSE NULL END,
ALTER COLUMN new_vaccinations TYPE bigint USING CASE WHEN new_vaccinations ~ '^\d+$' THEN new_vaccinations::bigint ELSE NULL END,
ALTER COLUMN new_vaccinations_smoothed TYPE bigint USING CASE WHEN new_vaccinations_smoothed ~ '^\d+$' THEN new_vaccinations_smoothed::bigint ELSE NULL END,
ALTER COLUMN total_vaccinations_per_hundred TYPE bigint USING CASE WHEN total_vaccinations_per_hundred ~ '^\d+$' THEN total_vaccinations_per_hundred::bigint ELSE NULL END,
ALTER COLUMN people_vaccinated_per_hundred TYPE bigint USING CASE WHEN people_vaccinated_per_hundred ~ '^\d+$' THEN people_vaccinated_per_hundred::bigint ELSE NULL END,
ALTER COLUMN people_fully_vaccinated_per_hundred TYPE bigint USING CASE WHEN people_fully_vaccinated_per_hundred ~ '^\d+$' THEN people_fully_vaccinated_per_hundred::bigint ELSE NULL END,
ALTER COLUMN total_boosters_per_hundred TYPE bigint USING CASE WHEN total_boosters_per_hundred ~ '^\d+$' THEN total_boosters_per_hundred::bigint ELSE NULL END,
ALTER COLUMN new_vaccinations_smoothed_per_million TYPE bigint USING CASE WHEN new_vaccinations_smoothed_per_million ~ '^\d+$' THEN new_vaccinations_smoothed_per_million::bigint ELSE NULL END,
ALTER COLUMN new_people_vaccinated_smoothed TYPE bigint USING CASE WHEN new_people_vaccinated_smoothed ~ '^\d+$' THEN new_people_vaccinated_smoothed::bigint ELSE NULL END,
ALTER COLUMN new_people_vaccinated_smoothed_per_hundred TYPE bigint USING CASE WHEN new_people_vaccinated_smoothed_per_hundred ~ '^\d+$' THEN new_people_vaccinated_smoothed_per_hundred::bigint ELSE NULL END,
ALTER COLUMN stringency_index TYPE bigint USING CASE WHEN stringency_index ~ '^\d+$' THEN stringency_index::bigint ELSE NULL END,
ALTER COLUMN population_density TYPE bigint USING CASE WHEN population_density ~ '^\d+$' THEN population_density::bigint ELSE NULL END,
ALTER COLUMN median_age TYPE bigint USING CASE WHEN median_age ~ '^\d+$' THEN median_age::bigint ELSE NULL END,
ALTER COLUMN aged_65_older TYPE bigint USING CASE WHEN aged_65_older ~ '^\d+$' THEN aged_65_older::bigint ELSE NULL END,
ALTER COLUMN aged_70_older TYPE bigint USING CASE WHEN aged_70_older ~ '^\d+$' THEN aged_70_older::bigint ELSE NULL END,
ALTER COLUMN gdp_per_capita TYPE bigint USING CASE WHEN gdp_per_capita ~ '^\d+$' THEN gdp_per_capita::bigint ELSE NULL END,
ALTER COLUMN extreme_poverty TYPE bigint USING CASE WHEN extreme_poverty ~ '^\d+$' THEN extreme_poverty::bigint ELSE NULL END,
ALTER COLUMN cardiovasc_death_rate TYPE bigint USING CASE WHEN cardiovasc_death_rate ~ '^\d+$' THEN cardiovasc_death_rate::bigint ELSE NULL END,
ALTER COLUMN diabetes_prevalence TYPE bigint USING CASE WHEN diabetes_prevalence ~ '^\d+$' THEN diabetes_prevalence::bigint ELSE NULL END,
ALTER COLUMN female_smokers TYPE bigint USING CASE WHEN female_smokers ~ '^\d+$' THEN female_smokers::bigint ELSE NULL END,
ALTER COLUMN male_smokers TYPE bigint USING CASE WHEN male_smokers ~ '^\d+$' THEN male_smokers::bigint ELSE NULL END,
ALTER COLUMN handwashing_facilities TYPE bigint USING CASE WHEN handwashing_facilities ~ '^\d+$' THEN handwashing_facilities::bigint ELSE NULL END,
ALTER COLUMN hospital_beds_per_thousand TYPE bigint USING CASE WHEN hospital_beds_per_thousand ~ '^\d+$' THEN hospital_beds_per_thousand::bigint ELSE NULL END,
ALTER COLUMN life_expectancy TYPE bigint USING CASE WHEN life_expectancy ~ '^\d+$' THEN life_expectancy::bigint ELSE NULL END,
ALTER COLUMN human_development_index TYPE bigint USING CASE WHEN human_development_index ~ '^\d+$' THEN human_development_index::bigint ELSE NULL END,
ALTER COLUMN excess_mortality_cumulative_absolute TYPE bigint USING CASE WHEN excess_mortality_cumulative_absolute ~ '^\d+$' THEN excess_mortality_cumulative_absolute::bigint ELSE NULL END,
ALTER COLUMN excess_mortality_cumulative TYPE bigint USING CASE WHEN excess_mortality_cumulative ~ '^\d+$' THEN excess_mortality_cumulative::bigint ELSE NULL END,
ALTER COLUMN excess_mortality TYPE bigint USING CASE WHEN excess_mortality ~ '^\d+$' THEN excess_mortality::bigint ELSE NULL END,
ALTER COLUMN excess_mortality_cumulative_per_million TYPE bigint USING CASE WHEN excess_mortality_cumulative_per_million ~ '^\d+$' THEN excess_mortality_cumulative_per_million::bigint ELSE NULL END;

-- Changing data type of columns from character varying to character
ALTER TABLE covid_vaccinations
ALTER COLUMN iso_code TYPE varchar,
ALTER COLUMN continent TYPE varchar,
ALTER COLUMN location TYPE varchar,
ALTER COLUMN date TYPE varchar;



ALTER TABLE covid_vaccinations ALTER COLUMN date TYPE DATE USING TO_DATE(date, 'DD/MM/YYYY');                                                      ALTER TABLE
ALTER TABLE covid_deaths ALTER COLUMN date TYPE DATE USING TO_DATE(date, 'DD/MM/YYYY');

select location, date, total_cases, total_deaths, (total_deaths::numeric/ total_cases::numeric) * 100 as death_percentage 
from covid_deaths 
order by location, date 
limit 200;

-- to get the death percentage due to covid for Kenya
-- this shows thw likelyhood of dying from covid in Kenya

select location, date, total_cases, total_deaths, Round(((total_deaths::numeric/ total_cases::numeric) * 100), 2) as death_percentage 
from covid_deaths 
where location like 'Kenya' 
order by location, date 
limit 200;


-- to get the percentage of the population with covid in Kenya as of 2023-12-30


SELECT location, date, total_cases, population, percentage_with_covid 
FROM 
( SELECT location, date, total_cases, population, ROUND(((total_cases::numeric/ population::numeric) * 100), 2) as percentage_with_covid 
FROM covid_deaths WHERE location LIKE 'Kenya' ) AS subquery 
WHERE date = '2023-12-30' 
ORDER BY location, date;

