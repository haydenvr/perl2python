#!/usr/bin/python2.7 -u
import fileinput, re, sys
for $line in fileinput.input():
    $line = re.sub(r'[aeiou]', '', $line, flags=re.I)
    sys.stdout.write(_)
