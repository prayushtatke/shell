#!/bin/bash
set -x
#  variable assignment: <var_name>=<var_value>
#+ there shouldn't be any spaces around `=` operator.
# Below 2 assignment will fail as the has space around '='
# NOTE: the shell errors out on the very first incorrect thing on each line, Ingonring rest(if any).
name= prayush  #  Error: prayushayush: command not found
               #+ the shell interpreted the 'name' variable as empty-string '' and 'prayush' as command.

name =tatke  #  Error: name: command not found.
name=prayush ; echo $name    # ';' to have multiple commands on same line. Used for brevity.

#  if string has spaces in between, always wrap it in "".
#+ It is always better to wrap any String value in "", irrespective of it has spaces.
name="Prayush Tatke" ; echo $name

echo "----- variable Types ------"

#  By default, Variable can hold any type of data.
#+ But we can define Integer and Array & ReadOnly(Constants) variables using `declare` builtin.

# Integer variable without declare
age=30 ; echo $age
age=$age+2 ; echo $age   # output : 30+2

#  Declaring variable Integer, Simple Integer Operation can be done directly.
#+ Note: there shouldn't be any space around operator.
declare -i age

age=$age+2 ; echo $age  # output: 34; 30+2+2
age=$age*2 ; echo $age

