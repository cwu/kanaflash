CLOSURE_COMPILER = /opt/tools/closure-compiler.jar
PUBLIC_JS_DIR    = public/javascripts
PUBLIC_COFFEE    = $(wildcard $(PUBLIC_JS_DIR)/*.coffee)
PUBLIC_JS        = $(addsuffix .js, $(basename $(PUBLIC_COFFEE)))
PUBLIC_JS_MIN    = $(addsuffix .min, $(PUBLIC_JS))
UPSTART_DIR      = deploy/upstart
UPSTART_FILES    = $(wildcard $(UPSTART_DIR)/*.conf)

$(PUBLIC_JS_DIR)/%.js: $(PUBLIC_JS_DIR)/%.coffee
	@echo "  Compiling $< ..."
	@coffee -c $<

$(PUBLIC_JS_DIR)/%.js.min: $(PUBLIC_JS_DIR)/%.js
	@echo "  Minifying $< ..."
	@java -jar $(CLOSURE_COMPILER) --js=$< --js_output_file=$@

all: compile

compile: $(PUBLIC_JS)

init_dev: deps upstart_dev seed

dev: kill
	@mkdir -p log
	@coffee -wc public > log/coffee-public.log 2>&1 &
	@redis-server > log/redis-server.log 2>&1 &
	@nodemon app.coffee

kill:
	-killall redis-server
	-killall coffee

upstart_dev:
	@sudo cp $(UPSTART_DIR)/redis-kanaflash.conf /etc/init
	@-sudo stop redis-kanaflash
	@sudo start redis-kanaflash

upstart_prod:
	@sudo cp $(UPSTART_FILEs) /etc/init

minify: $(PUBLIC_JS_MIN)
	@for js in $(PUBLIC_JS); do \
		mv $$js.min $$js ; \
	done

deps:
	@echo "Installing coffee-script and nodemon"
	npm install -g coffee-script
	npm install -g nodemon
	@echo "Installing libraries"
	npm install

seed:
	@echo "Seeding hiragana..."
	@sh tools/seed/hiragana.sh 6380
	@echo "Seeding katakana..."
	@sh tools/seed/katakana.sh 6380
	@echo "Combining for kana..."
	@sh tools/seed/kana.sh 6380
	@echo "Seeding map2:hiragana..."
	@sh tools/seed/to_hiragana.sh 6380
	@echo "Seeding map2:katakana..."
	@sh tools/seed/to_katakana.sh 6380

clean:
	@echo "Removing public js"
	@rm -f $(PUBLIC_JS)
	@echo "Removing public minified js"
	@rm -f $(PUBLIC_JS_MIN)
