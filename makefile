main.png:main.pdf
	pdftoppm main.pdf -png -r 450 -singlefile main
main.pdf:main.typ background.png
	typst c main.typ
background.png:学校信纸_机打.pdf
	pdftoppm 学校信纸_机打.pdf -png -r 450 -singlefile background
clean:main.pdf background.png main.png
	rm -f $^
