FONTS_DIR = ../fonts
FONTS = $(FONTS_DIR)/Raleway-Variable.ttf \
        $(FONTS_DIR)/Lato-Regular.ttf \
        $(FONTS_DIR)/Lato-Bold.ttf \
        $(FONTS_DIR)/Lato-Italic.ttf

chair-slides.pdf: chair-slides.typ $(FONTS)
	typst compile --font-path $(FONTS_DIR) chair-slides.typ chair-slides.pdf

$(FONTS_DIR)/Raleway-Variable.ttf:
	@mkdir -p $(FONTS_DIR)
	curl -fsSL -o $@ "https://github.com/google/fonts/raw/main/ofl/raleway/Raleway%5Bwght%5D.ttf"

$(FONTS_DIR)/Lato-%.ttf:
	@mkdir -p $(FONTS_DIR)
	curl -fsSL -o $@ "https://github.com/google/fonts/raw/main/ofl/lato/Lato-$*.ttf"

.PHONY: clean
clean:
	rm -f chair-slides.pdf
