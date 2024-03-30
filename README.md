# Data Analytics Portfolio

## SQL Portfolio Project: Data Cleaning, Type Conversion, and Analysis

In this portfolio project, I worked with a dataset containing COVID-19 vaccination data. The dataset was initially in CSV format and contained various columns with different data types, including character varying and numeric values.

### Data Cleaning:

1. **Importing the Dataset:**
   To import the dataset into a PostgreSQL database, I used the `\copy` command:
   ```sql
   \copy covid_vaccinations FROM 'path_to_your_csv_file.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
   ```
   Initially, I faced issues with missing table structure. To resolve this, I created a Python script, `generate_table_sql.py`, to extract column headers and generate SQL code to create a table.

2. **Cleaning the Dataset:**
   I identified empty columns in the dataset using a Python script and generated SQL code to create a new table without these empty columns:
   ```python
   cleaned_sql_code = generate_cleaning_sql('covid_vaccinations.csv')
   with open('cleaned_table_creation.sql', 'w') as file:
       file.write(cleaned_sql_code)
   ```

3. **Execution of SQL Code:**
   The generated SQL code was executed in PostgreSQL to create a cleaned version of the dataset:
   ```sql
   \i cleaned_table_creation.sql
   ```

### Type Conversion:

1. **Identifying Data Type Inconsistencies:**
   After cleaning the dataset, I observed that some columns had data types of character varying when they should have been integers or bigints.

2. **Writing SQL Script for Type Conversion:**
   To address this issue, I wrote an SQL script to change the data types of specific columns from character varying to bigint:
   ```sql
   ALTER TABLE covid_vaccinations
   ALTER COLUMN total_tests TYPE bigint USING CASE WHEN total_tests ~ '^\d+$' THEN total_tests::bigint ELSE NULL END,
   ALTER COLUMN new_tests TYPE bigint USING CASE WHEN new_tests ~ '^\d+$' THEN new_tests::bigint ELSE NULL END;
   ```

3. **Executing SQL Script:**
   The SQL script was executed in PostgreSQL to update the data types of the columns in the dataset:
   ```sql
   \i change_column_types.sql
   ```

### Data Analysis:

1. **Calculating Death Percentage:**
   I performed analysis on the dataset to calculate the death percentage due to COVID-19 for each location over time:
   ```sql
   SELECT location, date, total_cases, total_deaths, (total_deaths::numeric/ total_cases::numeric) * 100 as death_percentage 
   FROM covid_deaths 
   ORDER BY location, date 
   LIMIT 200;
   ```

2. **Analyzing COVID-19 Impact in Kenya:**
   To specifically analyze the COVID-19 impact in Kenya, I calculated the death percentage and percentage of the population with COVID-19 as of a specific date:
   ```sql
   -- Death percentage due to COVID-19 in Kenya
   SELECT location, date, total_cases, total_deaths, Round(((total_deaths::numeric/ total_cases::numeric) * 100), 2) as death_percentage 
   FROM covid_deaths 
   WHERE location LIKE 'Kenya' 
   ORDER BY location, date 
   LIMIT 200;

   -- Percentage of the population with COVID-19 in Kenya as of 2023-12-30
   SELECT location, date, total_cases, population, percentage_with_covid 
   FROM 
   ( SELECT location, date, total_cases, population, ROUND(((total_cases::numeric/ population::numeric) * 100), 2) as percentage_with_covid 
   FROM covid_deaths WHERE location LIKE 'Kenya' ) AS subquery 
   WHERE date = '2023-12-30' 
   ORDER BY location, date;
   ```

By cleaning the dataset, converting data types, and performing data analysis, I gained valuable insights into the impact of COVID-19, particularly in Kenya.

### Still Ongoing...

---

This project is still ongoing, and further steps may include additional data analysis, visualization, and interpretation of the results.