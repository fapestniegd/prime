all: prime.d shar.head
	(cat shar.head ;cd prime.d; tar czf - * | gzip -9| base64) > prime
clean: 
	if [ -f prime ]; then /bin/rm prime; fi
