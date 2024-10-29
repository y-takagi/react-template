NPX := npx
NPM := npm

.PHONY: install
install:
	$(NPM) install

.PHONY: typecheck
typecheck:
	$(NPX) tsc --noEmit

.PHONY: check
check:
	$(NPX) biome ci .

.PHONY: check-fix
check-fix:
	$(NPX) biome check --write .

.PHONY: start
start:
	$(NPX) vite --port=3001

.PHONY: build
build:
	$(NPX) vite build
