CLOSURE_COMPILER = /opt/tools/closure-compiler.jar
PUBLIC_JS_DIR    = public/javascripts
PUBLIC_COFFEE    = $(wildcard $(PUBLIC_JS_DIR)/*.coffee)
PUBLIC_JS        = $(addsuffix .js, $(basename $(PUBLIC_COFFEE)))
PUBLIC_JS_MIN    = $(addsuffix .min, $(PUBLIC_JS))
UPSTART_DIR      = deploy/upstart
UPSTART_FILES    = $(wildcard $(UPSTART_DIR)/*.conf)
SHELL            = /bin/bash

NVM_DIR          = $(HOME)/.nvm
NVM_SH           = $(NVM_DIR)/nvm.sh
INCL_NVM         = source $(NVM_SH) ; 

# Note: need to change kanaflash.conf upstart if changing node versions
NODE_VERSION     = "v0.6.6"

$(PUBLIC_JS_DIR)/%.js: $(PUBLIC_JS_DIR)/%.coffee
	@echo "  Compiling $< ..."
	@coffee -c $<

$(PUBLIC_JS_DIR)/%.js.min: $(PUBLIC_JS_DIR)/%.js
	@echo "  Minifying $< ..."
	@java -jar $(CLOSURE_COMPILER) --js=$< --js_output_file=$@

all: compile

compile: $(PUBLIC_JS)

init_dev: nodejs deps upstart_dev seed

nodejs:
	@echo "Updating nvm..."
	@if [ -d $(NVM_DIR) ] ; then \
	  cd $(NVM_DIR) ; git pull ; cd - ; \
	else \
		git clone git://github.com/creationix/nvm.git $(NVM_DIR) ; \
	fi
	@ls $(NVM_SH)
	@echo "Installing nodejs $(NODE_VERSION) ..."
	@$(INCL_NVM) nvm install $(NODE_VERSION)
	@$(INCL_NVM) nvm alias default $(NODE_VERSION)
	@$(INCL_NVM) nvm use default

upstart_dev:
	@sudo cp $(UPSTART_DIR)/redis-kanaflash.conf /etc/init
	@-sudo stop redis-kanaflash
	@sudo start redis-kanaflash

upstart_prod:
	@sudo cp $(UPSTART_FILES) /etc/init
	@sudo sed 's/NODE_VERSION/$(NODE_VERSION)/' \
		$(UPSTART_DIR)/kanaflash.conf.template > /etc/init/kanaflash.conf

minify: $(PUBLIC_JS_MIN)
	@for js in $(PUBLIC_JS); do \
		mv $$js.min $$js ; \
	done

deps:
	@echo "Installing coffee-script and nodemon"
	@$(INCL_NVM) npm install -g coffee-script
	@$(INCL_NVM) npm install -g nodemon
	@echo "Installing libraries"
	@$(INCL_NVM) npm install

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
