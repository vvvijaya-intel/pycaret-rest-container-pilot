AUXFILES = *.aux *.bbl *.log *.nav *.out *.snm *.toc *.vrb

PERFHOME = /p/dpg/arch/perfhome
PYTHON   = $(PERFHOME)/python/miniconda3

export PATH := $(PYTHON)/bin:$(PATH)

all: sphinx

sphinx: index.rst conf.py
	@sphinx-build -M html . .

clean:
	rm -rf doctrees/ html/ *.html

.PHONY: all clean
