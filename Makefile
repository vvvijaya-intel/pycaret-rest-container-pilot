PROJECT  = python_boilerplate

PERFHOME := /p/dpg/arch/perfhome
PYTHON   := $(PERFHOME)/python/miniconda3

all: docs test lint

docs:
	@echo "[ Docs ]"
	@make -C docs

yapf:
	@echo "[ yapf ]"
	$(PYTHON)/bin/yapf -i -p -r bin/ $(PROJECT)/

yapf-check:
	@echo "[ yapf ]"
	@$(PYTHON)/bin/yapf -d -p -r bin/ $(PROJECT)/ > /dev/null || ( echo "Run 'make yapf' to fix code formatting"; exit 1 )

isort:
	@echo "[ isort ]"
	$(PYTHON)/bin/isort

isort-check:
	@echo "[ isort ]"
	@$(PYTHON)/bin/isort --check-only || ( echo "Run 'make isort' to fix imports order"; exit 1 )

pylint:
	@echo "[ pylint ]"
	@$(PYTHON)/bin/pylint $(PROJECT)

flake8:
	@echo "[ flake8 ]"
	@$(PYTHON)/bin/flake8 bin/ $(PROJECT)/

pydocstyle:
	@echo "[ pydocstyle ]"
	@$(PYTHON)/bin/pydocstyle $(PROJECT)/

lint: yapf-check isort-check flake8 pydocstyle pylint

test:
	@echo "[ unit tests ]"
	@$(PYTHON)/bin/pytest -q --cov=$(PROJECT) --cov-report term --cov-report html $(TESTOPT) $(TEST)

dev_package:
	@echo "[ install package in development-mode ]"
	@$(PYTHON)/bin/pip install --user -e .

package:
	@echo "[ install package ]"
	@$(PYTHON)/bin/pip install .

unpackage:
	@echo "[ uninstall package ]"
	@$(PYTHON)/bin/pip uninstall $(PROJECT)

test-package:
	@echo "[ package test ]"
	@$(PYTHON)/bin/tox

clean:
	make clean -C docs
	find $(PROJECT) -type d -name __pycache__ -exec rm -rf {} \+
	rm -rf .pytest_cache/ coverage/ .coverage

.PHONY: all clean docs yapf yapf-check isort isort-check pylint flake8 pydocstyle test
