#! /usr/bin/env python

import os
import commands as cmd
import yaml

if os.geteuid() != 0:
	print "YOU NEED SUDO TO RUN THIS!"
