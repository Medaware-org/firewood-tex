firewood.pdf: firewood.tex
	xelatex firewood.tex
	xelatex firewood.tex

.PHONY: open
open: clean-pdf firewood.pdf
	open firewood.pdf

.PHONY: clean-pdf
clean-pdf:
	rm -f firewood.pdf

.PHONY: clean
clean:
	find . -type f -name "*.aux" -or -name "*.log" | xargs -n1 rm -f
