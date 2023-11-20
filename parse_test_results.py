def parse_test_results(file_path):
    # Initialize variables to count test results
    total_tests = 0
    successful_tests = 0
    failed_tests = 0

    # Open and read the test results file
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Loop through each line in the file
    for line in lines:
        # Count the total number of tests
        if line.startswith('Ran '):
            total_tests = int(line.split()[1])

        # Count successful and failed tests
        if 'OK' in line:
            successful_tests += 1
        elif 'FAIL' in line:
            failed_tests += 1

    return total_tests, successful_tests, failed_tests

# Provide the path to the test results file
test_results_file = 'test_results.txt'

# Call the function to parse test results
total, successful, failed = parse_test_results(test_results_file)

# Print the parsed information
print(f"Total number of tests run: {total}")
print(f"Successful tests: {successful}")
print(f"Failed tests: {failed}")
