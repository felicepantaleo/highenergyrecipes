MAIN = main
BUILD_DIR = build

.PHONY: all clean open

all:
	mkdir -p $(BUILD_DIR)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(BUILD_DIR) $(MAIN).tex

clean:
	rm -rf $(BUILD_DIR)

open:
	xdg-open $(BUILD_DIR)/$(MAIN).pdf
