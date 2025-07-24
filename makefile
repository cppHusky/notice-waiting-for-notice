all:main.png recursive.png
recursive.png:recursive.typ main.png
	cp main.png recursive.png
	for i in $$(seq 1 8); do \
		typst c recursive.typ -f png --ignore-system-fonts --font-path ./fonts --ppi 300; \
	done
main.png:main.typ background.png
	typst c main.typ -f png --ignore-system-fonts --font-path ./fonts --ppi 300
background.png:学校信纸_机打.pdf
	pdftoppm 学校信纸_机打.pdf -png -r 450 -singlefile background
clean:background.png main.png recursive.png
	rm -f $^
