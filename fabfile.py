from fabric.api import cd, run, env, sudo
from fabric.contrib.console import confirm
from fabric.context_managers import settings
from fabric.context_managers import prefix

env.hosts = ['ubuntu@ec2-107-21-64-22.compute-1.amazonaws.com']

code_dir = '/opt/kanaflash'
log_dir = '%s/log' % code_dir

def compile_js():
    with cd(code_dir):
        run('make compile')

def minify():
    with cd(code_dir):
        run ('make minify')

def find_new_secret():
    run('sh /opt/tools/kanasecret')

def reset_db():
    if confirm("Are you sure? This will WIPE ALL USER DATA"):
        with cd(code_dir):
            run("redis-cli flushall")
            run("make seed")

def seed():
    with cd(code_dir):
        run("make seed")

def deploy():
    with cd(code_dir):
        run('git checkout .')
        with settings(warn_only=True):
            update = run('git pull')
        if update.failed:
            run('git checkout .')
        find_new_secret()
        with prefix("source $HOME/.nvm/nvm.sh"):
            run('npm install')
            compile_js()
        minify()
        sudo('make upstart_dev')
        sudo('stop kanaflash || true')
        sudo('start kanaflash')
