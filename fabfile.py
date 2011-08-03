from fabric.api import cd, run, env

env.hosts = ['paper@linode']

code_dir = '/opt/kanaflash'

def compile_js():
    with cd(code_dir):
        run('make compile')

def minify():
    with cd(code_dir):
        run ('make minify')

def find_new_secret():
    run('sh /opt/tools/kanasecret')

def reset_db():
    with cd(code_dir):
        run("redis-cli flushall")
        run("make seed")

def deploy():
    with cd(code_dir):
        run('git co .')
        run('git pull')
        find_new_secret()
        run('npm install')
        compile_js()
        minify()
