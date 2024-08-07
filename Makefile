all:
	rm -rf public
	hugo --gc --minify
	nmcli connection up vpita-intranet
	rsync -avzhe 'ssh -p 2222' --delete public/ wmpaic@dominios02.ita.br:html/
	nmcli connection down vpita-intranet
