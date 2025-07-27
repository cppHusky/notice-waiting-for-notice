all:classic.png recursive.png emperor.png
recursive.png:recursive.typ classic.png
	cp classic.png recursive.png
	for i in $$(seq 0 8 | sort -r); do \
		typst c recursive.typ -f png --ignore-system-fonts --font-path ./fonts --ppi 300 --input dateadd=$${i}; \
	done
emperor.png:emperor.typ background.png
	typst c emperor.typ -f png --ignore-system-fonts --font-path ./fonts --ppi 300
classic.png:classic.typ background.png
	typst c classic.typ -f png --ignore-system-fonts --font-path ./fonts --ppi 300
clean:classic.png recursive.png emperor.png
	rm -f $^
