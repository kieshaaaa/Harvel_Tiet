# Created by Subhrendu (Remove later)
## List of commands used
### Comment all Library preprocessor directives
```
find ./aes -name '*.[ch]' -exec sed -i 's/^#include\s\+<[^>]*>/\/\/&/' {} \;
```
### UnComment all Library preprocessor directives
```
find ./aes -name '*.[ch]' -exec sed -i 's/^\/\/\(.*#include\s\+<[^>]*>\)/\1/' {} \;
```

### GCC preprocess
```
gcc -E -P -nostdinc aes/aes.c -o aes-trial.c
```

### View all functions in a Program
```
ctags -x --c-kinds=f aes-trial.c
```