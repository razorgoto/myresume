all :
	pandoc -f markdown_github -t htm5 -o Resume.html -s Resume.md
	pandoc -f markdown_github -t plain -o Resume.txt -s Resume.html
	pandoc -f markdown_github -t docx -o Resume.docx -s --reference-docx=ResumeTemplate.dotx Resume.md
	pandoc -f markdown_github -o Resume.pdf -s Resume.md

	# wkhtmltopdf --title "Resume of Sammy Lao" -q -n Resume.html Resume.pdf


	cp -f Resume.*  ~/Dropbox/Public/
	rm Resume.docx
	rm Resume.html
	rm Resume.txt
	rm Resume.pdf