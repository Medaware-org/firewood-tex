firewood.pdf: firewood.tex
	xelatex firewood.tex
	xelatex firewood.tex

open: clean-pdf firewood.pdf
	open firewood.pdf

clean-pdf:
	rm -f firewood.pdf

clean:
	find . -type f -name "*.aux" -or -name "*.log" | xargs -n1 rm -f
