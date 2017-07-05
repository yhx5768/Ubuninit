#!/usr/bin/python

import os
import commands as cmd
import yaml

if os.geteuid() != 0:
	print "YOU NEED SUDO TO RUN THIS!"



b = cmd.getstatusoutput('sudo apt-get update')
print b
