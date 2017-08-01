#! /usr/bin/env python

import os
import commands as cmd
import yaml

if os.geteuid() != 0:
	print "YOU NEED SUDO TO RUN THIS!"


command_list = [
			'install_chrome',

			'setup_tilda',
			'setup_google_pinyin',
			'setup_atom',
			'setup_android_studio',
			'setup_pycharm'
			]
