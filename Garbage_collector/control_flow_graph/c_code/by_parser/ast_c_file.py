from pycparser import c_parser

def parse_c_code(code):
    parser = c_parser.CParser()
    ast = parser.parse(code)
    return ast

def save_ast_to_file(ast, filename):
    with open(filename, 'w') as f:
        f.write(str(ast))

# Read C code from file
c_code_filename = 'sum.c'
with open(c_code_filename, 'r') as f:
    c_code = f.read()

# Parse the C code into an AST
ast = parse_c_code(c_code)

# Save the AST to a file
ast_output_filename = 'ast_output.txt'
save_ast_to_file(ast, ast_output_filename)
