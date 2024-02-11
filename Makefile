# Makefile

.PHONY: help install shell test cover run

help:
	@echo "Available targets:"
	@echo "  install   - Install project dependencies"
	@echo "  shell	    - Drops into the virtual poetry environment"
	@echo "  test      - Run tests using pytest, check htmlcov/index.html for a nice visual report of covered lines"
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
	poetry run coverage xml -o coverage.xml

run:
	poetry run python src/flaskapp/app.py

sonar:
	@sonar-scanner \
  -Dsonar.projectKey=flaskapp \
  -Dsonar.sources=src/ \
  -Dsonar.tests=tests/ \
  -Dsonar.host.url=$SERVER \
  -Dsonar.token=$TOKEN
  -Dsonar.python.coverage.reportPaths=coverage.xml