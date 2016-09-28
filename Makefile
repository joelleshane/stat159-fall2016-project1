.phony: clean

all: paper/paper.md paper/paper.html

paper/paper.md: paper/sections/*.md
	cat paper/sections/*.md > paper/paper.md
paper/paper.html: paper/paper.md
	pandoc -s paper/paper.md -o paper/paper.html

clean: rm -f paper/paper.html
