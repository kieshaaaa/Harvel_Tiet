def remove_duplicates_with_format_specifier(format_specifier, variable):
    unique_variable_list = []
    wrt_format_specifier = []

    for fmt_spec, var in zip(format_specifier, variable):
        if var not in unique_variable_list:
            unique_variable_list.append(var)
            wrt_format_specifier.append(fmt_spec)

    return wrt_format_specifier, unique_variable_list


def remove_duplicates_variable(variable):
    unique_variable_list = []

    for var in variable:
        if var not in unique_variable_list:
            unique_variable_list.append(var)
      

    return unique_variable_list
