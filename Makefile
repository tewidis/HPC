MD = markdown
PDF = pdf

all: introduction locality

clean:
	rm -f *~
	rm -f $(PDF)/*
	rm -f $(MD)/*~

introduction: $(MD)/introduction.md
	pandoc -V geometry:margin=1in -o $(PDF)/introduction.pdf $(MD)/introduction.md
	
locality: $(MD)/locality.md
	pandoc -V geometry:margin=1in -o $(PDF)/locality.pdf $(MD)/locality.md
