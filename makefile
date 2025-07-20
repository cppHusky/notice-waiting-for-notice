all:main.png recursive.png
recursive.png:recursive.typ main.png
	cp main.png recursive.png
	typst c recursive.typ # loop 1
	pdftoppm recursive.pdf -png -r 450 -singlefile recursive
	typst c recursive.typ # loop 2
	pdftoppm recursive.pdf -png -r 450 -singlefile recursive
	typst c recursive.typ # loop 3
	pdftoppm recursive.pdf -png -r 450 -singlefile recursive
	typst c recursive.typ # loop 4
	pdftoppm recursive.pdf -png -r 450 -singlefile recursive
	typst c recursive.typ # loop 5
	pdftoppm recursive.pdf -png -r 450 -singlefile recursive
	typst c recursive.typ # loop 6
	pdftoppm recursive.pdf -png -r 450 -singlefile recursive
main.png:main.pdf
	pdftoppm main.pdf -png -r 450 -singlefile main
main.pdf:main.typ background.png
	typst c main.typ
background.png:学校信纸_机打.pdf
	pdftoppm 学校信纸_机打.pdf -png -r 450 -singlefile background
clean:main.pdf background.png main.png recursive.png
	rm -f $^
