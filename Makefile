NPX := npx

.PHONY: typecheck
typecheck:
	$(NPX) tsc --noEmit

.PHONY: start
start:
	$(NPX) vite --port=3001

.PHONY: build
build:
	$(NPX) vite build
