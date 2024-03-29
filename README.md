# DataAnalyticsPortfolio
---
**SQL**
**Portfolio Project: SQL Data Cleaning and Type Conversion**

In this portfolio project, I worked with a dataset containing COVID-19 vaccination data. The dataset was initially in CSV format and contained various columns with different data types, including character varying and numeric values.

**Data Cleaning:**
1. I began by importing the dataset into a PostgreSQL database using the `\copy` command:
   ```sql
   \copy covid_vaccinations FROM 'path_to_your_csv_file.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
   ```
2. Next, I wrote a Python script to clean the dataset by removing empty columns. The script identified empty columns and generated SQL code to create a new table with non-empty columns:
   ```python
   # Python code to clean the dataset and generate SQL code
   # (Example code snippet)
   cleaned_sql_code = generate_cleaning_sql('covid_vaccinations.csv')
   with open('cleaned_table_creation.sql', 'w') as file:
       file.write(cleaned_sql_code)
   ```
3. I then executed the generated SQL code in PostgreSQL to create a cleaned version of the dataset:
   ```sql
   \i cleaned_table_creation.sql
   ```

**Type Conversion:**
1. After cleaning the dataset, I noticed that some columns had data types of character varying when they should have been integers or bigints.
2. To address this, I wrote another SQL script to change the data types of specific columns from character varying to bigint:
   ```sql
   -- SQL code to change data types of columns
   -- Example code snippet
   ALTER TABLE covid_vaccinations
   ALTER COLUMN total_tests TYPE bigint USING CASE WHEN total_tests ~ '^\d+$' THEN total_tests::bigint ELSE NULL END,
   ALTER COLUMN new_tests TYPE bigint USING CASE WHEN new_tests ~ '^\d+$' THEN new_tests::bigint ELSE NULL END;
   ```
3. Finally, I executed the script in PostgreSQL to update the data types of the columns in the dataset:
   ```sql
   \i change_column_types.sql
   ```

By cleaning the dataset and converting the data types appropriately, I ensured that the data was more consistent and suitable for analysis. These preprocessing steps are essential for ensuring the accuracy and reliability of any subsequent data analysis or modeling tasks.

---

**Still Ongoing...**
