import subprocess

if subprocess.call('bash ../sub_shell/atom.sh setup', shell=True) == 0:
    subprocess.call('bash ../sub_shell/atom.sh setting', shell=True)
