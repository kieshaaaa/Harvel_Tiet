#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <main.c> <Relative_path>"
    exit 1
fi

main_c_file="$1"
main_ast_file="${main_c_file%.c}.ast"
Relative_path = "$2"


touch line_no.tmp
touch prototypes.tmp

# Generate the AST file
clang -Xclang -ast-dump -fsyntax-only "$main_c_file" > "$main_ast_file"

# Extract line numbers of FunctionDecl nodes
cat -n "$main_ast_file" | grep 'FunctionDecl' | awk '$1 {for (i=1; i<=NF; i++) if ($i ~ /line:/) print $1, $i}' | grep "<" |awk -F":" '{print $2}' > line_no.tmp

# Extract the content that has the fucntion prototypes
cat -n "$main_ast_file" | grep 'FunctionDecl' | awk '$1 {for (i=1; i<=NF; i++) if ($i ~ /line:/) print $1, $i}' | grep "<" |awk -F":" '{print $2}' | xargs -I % sed -n '%p' "$main_c_file" > prototypes.tmp 

# Clean up the generated AST file
rm "$main_ast_file"

#Run the python script which will fetch the lien number having extern prototypes
#python3 "$Full_path_combining" line_no.tmp prototypes.tmp 

# Clean up the generated line_no.tmp and prototypes.tmp
#rm line_no.tmp
#rm prototypes.tmp

#Run the python which will comment out the extern prototypes
#python3 "$Full_path_comment_extern" extern_prototypes.tmp "$main_c_file"

# Clean up the generated extern_prototypes.tmp
#rm extern_prototypes.tmp


