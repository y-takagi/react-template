PNPM := pnpm

.PHONY: install
install:
	$(PNPM) install

.PHONY: dev
dev:
	$(PNPM) vite

.PHONY: build
build:
	$(PNPM) vite build

.PHONY: typecheck
typecheck:
	$(PNPM) tsc --noEmit

.PHONY: lint
lint:
	$(PNPM) eslint './src/**/*.{ts,tsx}'

.PHONY: check-format
check-format:
	$(PNPM) prettier --check .

.PHONY: format
format:
	$(PNPM) prettier --write .
