# Makefile

.PHONY: help install test run cover shell

help:
	@echo "Available targets:"
	@echo "  install   - Install project dependencies"
	@echo "  shell	    - Drops into the virtual environment"
	@echo "  test      - Run tests using pytest"
	@echo "  run       - Run the Flask app"
	@echo "  help      - Show this help message"

install:
	poetry install

shell:
	poetry shell

test:
	poetry run pytest

cover:
	poetry run pytest --cov=src/ --cov-report=html --cov-report=term

run:
	poetry run python src/flaskapp/app.py