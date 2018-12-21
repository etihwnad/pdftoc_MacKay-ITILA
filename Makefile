

SOURCE=book.pdf
INFO=toc.info
OUTPUT=mackay-itila.pdf


default: $(OUTPUT)


# mark the generated info file as transient
# this may need to change if the file is to include more than the ToC
.INTERMEDIATE: $(INFO)

$(SOURCE):
	wget -O book.pdf http://www.inference.org.uk/itprnn/book.pdf

$(INFO): toc.votl totoc.py
	./totoc.py $< > $@

$(OUTPUT): $(SOURCE) $(INFO)
	pdftk $(SOURCE) update_info $(INFO) output $(OUTPUT)

clean:
	rm -f $(INFO)

clean-all: clean
	rm -f $(SOURCE) $(OUTPUT)
