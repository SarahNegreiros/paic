all:
	rm -rf public
	hugo --gc --minify
	rsync -avzhe 'ssh -p 2222' --delete public/ verri@dominios.ita.br:public_html/paic/
