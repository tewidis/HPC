MD = markdown
PDF = pdf

all: introduction locality time_energy_power io_avoiding_algorithms \
	cache_oblivious_algorithms

clean:
	rm -f *~
	rm -f $(PDF)/*
	rm -f $(MD)/*~

introduction: $(MD)/introduction.md
	pandoc -V geometry:margin=1in -o $(PDF)/introduction.pdf $(MD)/introduction.md
	
locality: $(MD)/locality.md
	pandoc -V geometry:margin=1in -o $(PDF)/locality.pdf $(MD)/locality.md
	
time_energy_power: $(MD)/time_energy_power.md
	pandoc -V geometry:margin=1in -o $(PDF)/time_energy_power.pdf $(MD)/time_energy_power.md
	
io_avoiding_algorithms: $(MD)/io_avoiding_algorithms.md
	pandoc -V geometry:margin=1in -o $(PDF)/io_avoiding_algorithms.pdf $(MD)/io_avoiding_algorithms.md
	
cache_oblivious_algorithms: $(MD)/cache_oblivious_algorithms.md
	pandoc -V geometry:margin=1in -o $(PDF)/cache_oblivious_algorithms.pdf $(MD)/cache_oblivious_algorithms.md
