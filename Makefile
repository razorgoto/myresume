all :
	pandoc -f markdown -t html Resume.md > Resume.html 
	pandoc -f markdown -o Resume.docx Resume.md 
