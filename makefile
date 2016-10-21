install:
	cp -nf etc/halogen.conf /etc/halogen.conf
	mkdir -p /usr/local/bin
	cp -f usr/local/bin/halogen /usr/local/bin/halogen
	cp -f usr/local/bin/halogen-admin /usr/local/bin/halogen-admin
	cp -f usr/local/bin/halogenzip /usr/local/bin/halogenzip
	chmod a-rwx,u+x,g+x,o+rwx /usr/local/bin/halogen
	chmod a-rwx,u+x,g+x,o+rwx /usr/local/bin/halogen-admin
	chmod a-rwx,u+x,g+x,o+rwx /usr/local/bin/halogenzip
	mkdir -p /home/lfs/
	mkdir -p /tmp/halogen
	cp -Rf tmp/halogen /tmp
	cp -f tmp/halogen/.bashrc /home/lfs/.bashrc
	cp -f tmp/halogen/.bash_profile /home/lfs/.bash_profile
	chown -R lfs /home/lfs &> /dev/null
	rm -Rf /var/lib/halogen
	rm -Rf /var/log/halogen
	mkdir -p /var/lib/halogen
	mkdir -p /var/log/halogen
	cp -f var/lib/halogen/sqlite.remote /var/lib/halogen/sqlite.remote
	cp -nf var/lib/halogen/sqlite.local /var/lib/halogen/sqlite.local
	cp -nf var/log/halogen/sqlite.log /var/log/halogen/sqlite.log
	cp -nf var/log/halogen/debug.log /var/log/halogen/debug.log
	chmod a+r,u+rx,g+rx,o+rwx /var/lib/halogen/sqlite.remote
	chmod a-r,u+rx,g+rx,o+rwx /var/lib/halogen/sqlite.local
	chmod a-r,u+rw,g+rw,o+rw /var/log/halogen/sqlite.log
	chmod a-r,u+rw,g+rw,o+rw /var/log/halogen/debug.log
	chmod a-r,u+rw,g+rw,o+rw /tmp/halogen -Rf
	
uninstall:
	rm -f /usr/local/bin/halogenzip /usr/local/bin/halogen /usr/local/bin/halogen-admin /etc/halogen.conf
	rm -Rf /var/lib/halogen
	rm -Rf /tmp/halogen