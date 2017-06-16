#!/usr/bin/env bash

#line="      sprintf(param1, \"%d\", value);"
#regex="([\t\s]*)(sprintf)\(([a\-zA\-Z0\-9]+)(,.*)"
#regex2="\1sprintf_s\(\3, sizeof\(\3\)\4"

#echo $line | sed -r "s/$regex/$regex2/g" 
#echo $line

# when 1st param is a function call
line="sprintf(TGV(param1, param2), \"%d\", value);"
regex1="sprintf\(([\w\s]+)(\(.*\)), (.*)"
regex2="sprintf_s\(\1\*2, sizeof\(\1\2)\3"
echo $line | sed -r "s/$regex1/$regex2/g" 