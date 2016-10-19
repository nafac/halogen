install:
	mkdir -p /usr/local/bin
	cp usr/local/bin/halogenzip /usr/local/bin/halogenzip
	chmod +x /usr/local/bin/halogenzip
	cp -nf etc/halogen.conf /etc/halogen.conf
	cp usr/local/bin/halogen /usr/local/bin/halogen
	cp usr/local/bin/halogen-admin /usr/local/bin/halogen-admin
	chmod +x /usr/local/bin/halogen
	chmod +x /usr/local/bin/halogen-admin
	mkdir -p /tmp/halogen
	cp -R tmp/halogen /tmp 
	mkdir -p /home/lfs/
	chown -R lfs /home/lfs &> /dev/null
	cp -Rf tmp/halogen/.bashrc /home/lfs/.bashrc
	cp -Rf tmp/halogen/.bash_profile /home/lfs/.bash_profile
	mkdir -p /var/lib/halogen/pkg
	cp -nf var/lib/halogen/sqlite.local /var/lib/halogen/sqlite.local
	cp -nf var/lib/halogen/sqlite.remote /var/lib/halogen/sqlite.remote
	chmod 1777 /var/lib/halogen -Rf
	chmod 1777 /tmp/halogen -Rf
	cp -f var/lib/halogen/pkg/* /var/lib/halogen/pkg
	
#	sudo chmod +x /bin/uunzip /usr/bin/halogen*
#	sudo chmod -R 0777 /var/lib/halogen /tmp/halogen
#	sudo chmod -R 0666 /var/lib/halogen
#	sudo chmod -R +x /var/lib/halogen/halogen.db
uninstall:
	rm -f /usr/local/bin/halogenzip /usr/local/bin/halogen /usr/local/bin/halogen-admin /etc/halogen.conf
	rm -Rf /var/lib/halogen
	rm -Rf /tmp/halogen