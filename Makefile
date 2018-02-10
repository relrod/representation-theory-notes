latex:
	latexmk -output-directory=out -aux-directory=out -pdf master.tex

open:
	xdg-open out/*.pdf &

clean:
	rm -rf out
