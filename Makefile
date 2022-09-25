MD = markdown
PDF = pdf

all: introduction locality time_energy_power io_avoiding_algorithms \
	cache_oblivious_algorithms work_span_model openmp comparison_based_sorting

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
	
work_span_model: $(MD)/work_span_model.md
	pandoc -V geometry:margin=1in -o $(PDF)/work_span_model.pdf $(MD)/work_span_model.md
	
openmp: $(MD)/openmp.md
	pandoc -V geometry:margin=1in -o $(PDF)/openmp.pdf $(MD)/openmp.md
	
comparison_based_sorting: $(MD)/comparison_based_sorting.md
	pandoc -V geometry:margin=1in -o $(PDF)/comparison_based_sorting.pdf $(MD)/comparison_based_sorting.md
