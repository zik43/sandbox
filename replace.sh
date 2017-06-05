#!/usr/bin/env bash

line="      sprintf(param1, \"%d\", value);"
regex="([\t\s]*)(sprintf)\(([a\-zA\-Z0\-9]+)(,.*)"
regex2="\1sprintf_s\(\3, sizeof\(\3\)\4"

echo $line | sed -r "s/$regex/$regex2/g" 
echo $line