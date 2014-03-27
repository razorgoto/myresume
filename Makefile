all :
	pandoc -f markdown_github -t html Resume.md > Resume.html
	pandoc -f markdown_github -t plain Resume.html > Resume.txt
	pandoc -f markdown_github -o Resume.docx Resume.md
	wkhtmltopdf --title "Resume of Sammy Lao" -q -n Resume.html Resume.pdf
	cp -f Resume.*  ~/Dropbox/Public/
	rm Resume.docx
	rm Resume.html
	rm Resume.txt
	rm Resume.pdf
