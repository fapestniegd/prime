all: prime.d __header
	(cat __header ;cd prime.d;tar czf - *|base64) > prime
	chmod 755 prime
clean: 
	if [ -f prime ]; then /bin/rm prime; fi
install: prime
	scp -p prime root@vili.websages.com: 2>/dev/null
clear: 
	clear
doit: clear clean all install
