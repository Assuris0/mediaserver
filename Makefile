CHARTS:=(huginn wash-hands)

# Requires Python to run

CHARTINFO=$(shell python ./tools/chartinfo.py $(1) $(2))



all: $(CHARTS)
