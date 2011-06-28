from fabric.api import cd, run, env

env.hosts = ['paper@linode']

code_dir = '/opt/kanaflash'

def compile_js():
    with cd(code_dir):
        run('coffee -c public/javascripts')


def minify_js():
    with cd(code_dir):
        raw_js_files = run('ls public/javascripts/*.js')
        js_files = [ js_file.strip() for js_file in raw_js_files.split('\n') ]
        for js in js_files:
            run('java -jar /opt/tools/closure-compiler.jar --js=%s --js_output_file=%s.min' % (js, js))
            run('mv %s.min %s' % (js, js))

def minify():
    with cd(code_dir):
        minify_js()

def deploy():
    with cd(code_dir):
        run('git pull')
        run('npm install')
        compile_js()
        minify()
