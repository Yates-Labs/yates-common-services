.PHONY: deps setup setup.go precommit

# Required CLI tools this project depends on.
REQUIRED_CLI_TOOLS := go docker goose

# Check for required CLI tools and exit with an error if any are missing.
deps: 
	@echo "Checking CLI dependencies..."
	@errors=0; \
	for cmd in $(REQUIRED_CLI_TOOLS); do \
		if ! command -v $$cmd >/dev/null 2>&1; then \
			echo "❌ Error: Required tool $$cmd is not installed."; \
			errors=1; \
		else \
			echo "   ↳  Tool $$cmd is installed."; \
		fi; \
	done; \
	if [ $$errors -ne 0 ]; then \
		echo "Please install the missing tools and try again."; \
		exit 1; \
	fi
	@echo "\n✅ All required CLI tools are installed."

# Setup the local development environment
SETUP_STEPS := setup.go 
setup: $(SETUP_STEPS)

# ... Setup sub-step: setup go workspace
MODULES = ./services/identity
setup.go: 
	@echo "Setting up Go workspace..."
	@if [ ! -f go.work ]; then \
		go work init $(MODULES); \
	else \
		echo "   💡 Go workspace already initialized."; \
	fi
	@echo "\n✅ Go workspace setup complete."

# Run pre-commit steps before committing code.
precommit:
	@echo "Running pre-commit steps..."
	@go work sync
	@echo "   ↳  Go workspace synchronized."
	@echo "\n✅ Pre-commit steps completed."