firewood.pdf: firewood.tex
	xelatex firewood.tex

open: firewood.pdf
	open firewood.pdf

clean:
	find . -type f -name "*.aux" -or -name "*.log" | xargs -n1 rm -f
