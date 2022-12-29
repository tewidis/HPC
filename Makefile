MD=$(wildcard markdown/*.md)
PDF=$(patsubst markdown/%.md, pdf/%.pdf, $(MD))
MDFLAG=-V geometry:margin=1in

all: $(PDF)

clean:
	rm -f *~
	rm -f $(PDF)/*
	rm -f $(MD)/*~

pdf/%.pdf: markdown/%.md
	pandoc $(MDFLAG) -o $@ $<
