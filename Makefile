all :

	pandoc -f markdown_github -t html5 -o Resume.html -s --self-contained --css ResumeStyle.css Resume.md
	pandoc -f html -t plain -o Resume.txt -s Resume.html
	pandoc -f markdown_github -t docx -o Resume.docx -s --reference-docx=ResumeTemplate.dotx Resume.md
	wkhtmltopdf --title "Resume of Sammy Lao" -q -n Resume.html Resume.pdf


	cp -f Resume.*  ~/Dropbox/Public/
	rm Resume.docx
	rm Resume.html
	rm Resume.txt
	rm Resume.pdf
