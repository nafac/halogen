install:
	sudo cp * / -RPf
	sudo rm /configure
	sudo rm /makefile
	sudo chmod +x /bin/uunzip /usr/bin/halogen*
	sudo chmod -R 0777 /var/lib/halogen /tmp/halogen
	sudo chmod -R 0666  /var/lib/halogen/*
uninstall:
	sudo rm /bin/uunzip /usr/bin/halogen*
#	sudo rm -Rf /var/lib/halogen
#	sudo rm -Rf /tmp/halogen