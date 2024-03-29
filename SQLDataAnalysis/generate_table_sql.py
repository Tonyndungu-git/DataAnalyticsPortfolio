import csv
import sys

# Check if the CSV file path is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <csv_file_path>")
    sys.exit(1)

# Get the CSV file path from the command line
csv_file = sys.argv[1]

# Function to check if a column is empty
def is_column_partially_empty(column):
    return any(cell.strip() for cell in column)

# Read the CSV file and drop fully empty columns
with open(csv_file, 'r', newline='') as file:
    csv_reader = csv.reader(file)
    header = next(csv_reader)  # Read the header
    empty_columns = [i for i, column in enumerate(zip(*csv_reader)) if not is_column_partially_empty(column)]

# Print out the detected empty columns
print("Detected empty columns:", empty_columns)

# Construct the CREATE TABLE statement
create_table_statement = f"CREATE TABLE your_table_name (\n"
for i, column_name in enumerate(header):
    if i not in empty_columns:
        create_table_statement += f"\t{column_name} VARCHAR,\n"
create_table_statement = create_table_statement.rstrip(",\n") + "\n);"

# Output the CREATE TABLE statement
print(create_table_statement)
