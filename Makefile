PACKAGE = jsonforms
NODEJS = $(if $(shell test -f /usr/bin/nodejs && echo "true"),nodejs,node)

BUILDDIR = dist

all: build

build: json-forms.js
	mkdir -p $(BUILDDIR)
	uglifyjs -nc lib/json-forms.js > $(BUILDDIR)/json-forms.min.js
	gzip -c lib/json-forms.min.js > $(BUILDDIR)/json-forms.min.js.gzip

test:
	nodeunit test/test.js

clean:
	rm $(BUILDDIR)/json-forms.min.js
	rm $(BUILDDIR)/json-forms.min.js.gzip

lint:
	nodelint --config nodelint.cfg lib/json-forms.js

.PHONY: clean test lint build all
