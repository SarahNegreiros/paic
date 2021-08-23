all:
	rm -rf public
	hugo --gc --minify
	rsync -avzhe 'ssh -p 2222' --delete public/ wmpaic@dominios02.ita.br:html/
