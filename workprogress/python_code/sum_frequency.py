import sys

def sum_frequencies(file_path):
    total_sum = 0
    with open(file_path, 'r') as file:
        for line in file:
            parts = line.split()  # Split the line into parts
            if len(parts) >= 2:  # Ensure there are at least two elements
                try:
                    number = int(parts[1])  # Try to convert the second element to an integer
                    total_sum += number
                except ValueError:
                    # If conversion fails, it means the second element is not an integer,
                    # so we skip this line
                    continue
    return total_sum

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <file_path>")
        sys.exit(1)
    
    file_path = sys.argv[1]
    print(f"The sum of all frequencies is: {sum_frequencies(file_path)}")
