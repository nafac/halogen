install:
	mkdir -p /usr/local/bin
	cp usr/local/bin/halogenzip /usr/local/bin/halogenzip
	chmod +x /usr/local/bin/halogenzip
	cp usr/local/bin/halogen /usr/local/bin/halogen
	cp usr/local/bin/halogen-admin /usr/local/bin/halogen-admin
	chmod +x /usr/local/bin/halogen
	chmod +x /usr/local/bin/halogen-admin
	mkdir -p /tmp/halogen
	mkdir -p /var/lib/halogen/pkg
	chmod 1777 /var/lib/halogen
	cp -n var/lib/halogen/sqlite.local /var/lib/halogen/sqlite.local
	cp -n var/lib/halogen/sqlite.remote /var/lib/halogen/sqlite.remote
	cp -f var/lib/halogen/pkg/* /var/lib/halogen/pkg
	cp -f etc/halogen.conf /etc/halogen.conf
	
#	sudo chmod +x /bin/uunzip /usr/bin/halogen*
#	sudo chmod -R 0777 /var/lib/halogen /tmp/halogen
#	sudo chmod -R 0666 /var/lib/halogen
#	sudo chmod -R +x /var/lib/halogen/halogen.db
uninstall:
	rm -f /usr/local/bin/halogenzip /usr/local/bin/halogen /usr/local/bin/halogen-admin
	rm -Rf /var/lib/halogen
	rm -Rf /tmp/halogen
