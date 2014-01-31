all :
	pandoc -f markdown -t html Resume.md > Resume.html 
	pandoc -f markdown -t docx Resume.md > Resume.docx 
