from pycparser import c_parser, c_ast

def parse_c_code(code):
    parser = c_parser.CParser()
    ast = parser.parse(code)
    return ast

def save_ast_to_file(ast, filename):
    with open(filename, 'w') as f:
        f.write(str(ast))

# Example C code
c_code = """
#include <stdio.h>
int main() {
    int x = 5;
    printf("Hello, world! %d\\n", x);
    return 0;
}
"""

ast = parse_c_code(c_code)

# Save the AST to a file
save_ast_to_file(ast, 'ast_output1.txt')
