#!/usr/bin/env python
import sys
import os
import tempfile
template="/root/wordpress-deployment.tpl"
tmp=tempfile.mkstemp()

with open(template) as fd1, open(tmp[1],'w') as fd2:
   for line in fd1:
       line = line.replace('_CHANGE_',sys.argv[1])
       fd2.write(line)

os.rename(tmp[1],"/root/wp-depl.yaml")
