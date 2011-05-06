PACKAGE = jsonforms
NODEJS = $(if $(shell test -f /usr/bin/nodejs && echo "true"),nodejs,node)

BUILDDIR = dist

all: build

build:
	coffee -c -o $(BUILDDIR) src/json-forms.coffee
	uglifyjs -nc $(BUILDDIR)/json-forms.js > $(BUILDDIR)/json-forms.min.js
	gzip -c $(BUILDDIR)/json-forms.min.js > $(BUILDDIR)/json-forms.min.js.gzip

test:
	nodeunit test/test.js

clean:
	rm -rf $(BUILDDIR)

lint: build
	nodelint --config nodelint.cfg $(BUILDDIR)/json-forms.js

.PHONY: clean test lint build all
