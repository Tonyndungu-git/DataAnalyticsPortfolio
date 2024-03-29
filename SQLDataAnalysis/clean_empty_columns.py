import csv
import sys

# Check if the CSV file path is provided as a command-line argument
if len(sys.argv) != 3:
    print("Usage: python script.py <input_csv_file_path> <output_csv_file_path>")
    sys.exit(1)

# Get the CSV file paths from the command line
input_csv_file = sys.argv[1]
output_csv_file = sys.argv[2]

# Open the input CSV file
with open(input_csv_file, 'r', newline='') as input_file:
    # Create a CSV reader object
    csv_reader = csv.reader(input_file)
    
    # Read the header row
    header = next(csv_reader)
    
    # Find empty columns
    empty_columns = [idx for idx, col in enumerate(header) if all(not row[idx] for row in csv_reader)]
    
    # Filter out empty columns and preserve columns with objects
    header_filtered = [col for idx, col in enumerate(header) if idx not in empty_columns or any(row[idx] for row in csv_reader)]
    
    # Open the output CSV file
    with open(output_csv_file, 'w', newline='') as output_file:
        # Create a CSV writer object
        csv_writer = csv.writer(output_file)
        
        # Write the header row to the output file
        csv_writer.writerow(header_filtered)
        
        # Write the filtered rows to the output file
        input_file.seek(0)
        next(input_file)  # Skip the header row
        for row in csv.reader(input_file):
            filtered_row = [row[idx] for idx in range(len(header)) if idx not in empty_columns or any(row[idx] for row in csv_reader)]
            csv_writer.writerow(filtered_row)

print("Filtered data has been saved to", output_csv_file)
