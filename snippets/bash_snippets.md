## The Sha-Bang (_#!_), The First Line
- is a 2-byte magic number, a marker that designate a file type.
- followed by path to the interpreter e.g. `/bin/bash,/usr/bin/python` etc.
- `#!/bin/bash`  should be the first line of the bash script.
  which means the rest of the statement of this script will be fed to `/bin/bash` interpreter.
- Though it is not mandatory for all scripts. But if scripts contains any shell constructs
  like variables, if-else etc. then (executable i.e run using ./)script will fail on those statements.
  If the script contains only a bunch of commands like rm, cp etc, then it is not required but it is always
  good to have it as first line.

## Variables: Types,Declaration and Assignments
- `<var_name>=<var_value>`, there shouldn't be any spaces around `=` operator.
- By default, Variable can hold any type of data. But we can define Integer and Array & ReadOnly(Constants) variables
  using `declare` builtin.

```
  Below variable assignments will **fail** as have space around '='
  name =John
  name= John
```

```
name=John
name="John Cena"  # if String has space in betweens, wrap it inside "".
# best practice

declare -i value=10  # 'value' will be treated as Integer.
declare -a arr       # declares 'arr' as array variable.

declare -r PI=3.14   # mark 'PI' as ReadOnly variable.
                     # this is similar to 'readonly PI=3.14'
                     # readonly is also a keyword.

```

- output of a command in variable
- multi-line String to a variable
- printing a multiline string (Usage or Help messages)
- if statements
- case statement
- loops
- Split a delimited String it variables
- Different ways reading a file(line by line), Using 'For', 'while' etc
 -- File reading cases, if file is delimited, read values in variables.
- writing output to a file
- String Pattern matching
- String Manipulations like SubString,startsWith(), endsWith(), contains,toUpper(),toLower() etc.
- Number calculations (Integer & Floating point).
- working with arrays and associative arrays.(declare statement)

- Create command Line options (getopt)

- regex
 -- grep
 -- sed
 -- awk
 -- perl
 -- search & replace cases

- running commands in background, (nohup,wait,coprocess)
- create a named pipe (mkfifo)

- Admin Commands
 -- df , dh , free vmstat,top etc
 -- ps
 -- find,locate


