CLOSURE_COMPILER = /opt/tools/closure-compiler.jar
PUBLIC_JS_DIR    = public/javascripts
PUBLIC_COFFEE    = $(wildcard $(PUBLIC_JS_DIR)/*.coffee)
PUBLIC_JS        = $(addsuffix .js, $(basename $(PUBLIC_COFFEE)))
PUBLIC_JS_MIN    = $(addsuffix .min, $(PUBLIC_JS))

$(PUBLIC_JS_DIR)/%.js: $(PUBLIC_JS_DIR)/%.coffee
	@echo "  Compiling $< ..."
	@coffee -c $<

$(PUBLIC_JS_DIR)/%.js.min: $(PUBLIC_JS_DIR)/%.js
	@echo "  Minifying $< ..."
	@java -jar $(CLOSURE_COMPILER) --js=$< --js_output_file=$@

all: compile

compile: $(PUBLIC_JS)

dev: kill
	@mkdir -p log
	@coffee -wc public > log/coffee-public.log 2>&1 &
	@redis-server > log/redis-server.log 2>&1 &
	@nodemon app.coffee

kill:
	-killall redis-server
	-killall coffee

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
	sh tools/seed/hiragana.sh
	@echo "Seeding katakana..."
	sh tools/seed/katakana.sh
	@echo "Combining for kana..."
	sh tools/seed/kana.sh

clean:
	@echo "Removing public js"
	@rm -f $(PUBLIC_JS)
	@echo "Removing public minified js"
	@rm -f $(PUBLIC_JS_MIN)
