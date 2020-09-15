pandoc=pandoc --pdf-engine=xelatex --toc -N
name=ressources
DEPS=$(name).md


pdf: $(DEPS)
	$(pandoc) $(name).md -o $(name).pdf

word: $(DEPS)
	$(pandoc) $(name).md -o $(name).odt

all: word pdf
