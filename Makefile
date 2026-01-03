# The main source file
JEMDOC = $(wildcard *.jemdoc blog/*.jemdoc)
# The PDF file
HTML = $(patsubst %.jemdoc,%.html,$(JEMDOC))

# Rules for building, opening, and cleaning the jemdoc output
all: $(HTML)

%.html: %.jemdoc
	python3.9 ~/bin/jemdoc -c jemdoc.conf $<

clean:
	rm -f $(HTML)
