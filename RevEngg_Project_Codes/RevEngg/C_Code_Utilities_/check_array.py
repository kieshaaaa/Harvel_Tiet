import re


def separate_array_types(variables, data_types):
    array_variables = []
    array_data_types = []

    for variable, data_type in zip(variables, data_types):
        if '[' in variable and ']' in variable:
            array_variables.append(variable)
            array_data_types.append(data_type)

    return array_variables, array_data_types


def convert_to_simple_variables(variables):
    simple_variables = []

    for variable in variables:
        # Use regular expression to check if the variable is an array
        index_pattern = re.compile(r'\[\w*\d*\]$')        

        if index_pattern.search(variable):
            # Extract the variable name without the array indices
            simple_variable = re.sub(r'\[\w*\d*\]$', '', variable)
            # simple_variable = re.sub(r'\[\d+\]$', '', variable)
            simple_variables.append(simple_variable)
        else:
            simple_variables.append(variable)
    print("simple list variables",simple_variables)
    return simple_variables

def check_variable_type(variable_name):
    # Define a regular expression pattern to match array variables
    array_pattern = re.compile(r'^[a-zA-Z_]\w*\[\d+\]$')

    # Check if the variable matches the array pattern
    if array_pattern.match(variable_name):
        return "Array"
    else:
        return "Simple"

if __name__ == "__main__":
    list_var = ['gola', 'array[i]', 'var', 'array8[j]', 'num']
    list_format = ['int', 'char', 'float', 'int', 'double']

    array_variables, array_data_types = separate_array_types(list_var, list_format)

    print("Array Variables:", array_variables)
    print("Array Data Types:", array_data_types)
