latex:
	latexmk -output-directory=out -aux-directory=out -pdf master.tex

open:
	xdg-open out/*.pdf &

clean:
	rm -rf out

upload: latex
	scp out/master.pdf vps:/srv/webmount/tmp/CCRT.pdf
