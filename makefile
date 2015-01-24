install:
	sudo cp bin/uunzip /bin/uunzip
	sudo chmod +x /bin/uunzip
	sudo cp -n etc/halogen.conf /etc/halogen.conf
	sudo cp usr/bin/halogen /usr/bin/halogen
	sudo cp usr/bin/halogen-admin /usr/bin/halogen-admin
	sudo chmod +x /usr/bin/halogen
	sudo chmod +x /usr/bin/halogen-admin
	mkdir -p /tmp/halogen
	sudo mkdir -p /var/lib/halogen/pkg
	sudo chmod 1777 /var/lib/halogen
	cp -n var/lib/halogen/halogen.db /var/lib/halogen/halogen.db
	#mkdir -p /var/lib/halogen/pkg
	cp -f var/lib/halogen/pkg/* /var/lib/halogen/pkg
	
#	sudo chmod +x /bin/uunzip /usr/bin/halogen*
#	sudo chmod -R 0777 /var/lib/halogen /tmp/halogen
#	sudo chmod -R 0666 /var/lib/halogen
#	sudo chmod -R +x /var/lib/halogen/halogen.db
uninstall:
	# check permissions
	sudo rm -f /bin/uunzip /usr/bin/halogen*
	sudo rm -Rf /var/lib/halogen
	sudo rm -Rf /tmp/halogen