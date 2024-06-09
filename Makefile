# Makefile for Tide

# Define default goal
.DEFAULT_GOAL := all

# Default target
all: test

# Test target
.PHONY: test

test:
	@echo "Running tests..."
	fish -c 'for test in tests/*.test.fish; fish $$test; end'

# Clean target
.PHONY: clean

clean:
	@echo "Cleaning up..."
	@rm -rf tmp/*

# Install target
.PHONY: install

install:
	@echo "Installing Tide..."
	@fisher install IlanCosman/tide@v6

# Uninstall target
.PHONY: uninstall

uninstall:
	@echo "Uninstalling Tide..."
	@fisher remove IlanCosman/tide
