BUNDLE = bin/bundle
UGLIFY = node_modules/.bin/uglifyjs

all: js
js: build build/app.js
dist: build build/app.min.js

build:
	@mkdir -p $@

build/app.js: $(shell find src) $(shell find data)
	$(BUNDLE) ./src/app.js > $@

build/%.min.js: build/%.js
	$(UGLIFY) -nc < $< > $@
