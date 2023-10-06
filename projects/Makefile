webRoot=/var/www/html/goblimey

sourceRoot=..

# The name of this directory, eg "projects".
nameOfThisDirectory=$(notdir $(shell pwd))

# # The destination for the pages produced, eg /var/www/html/goblimey/projects.
destination=${webRoot}/${nameOfThisDirectory}

all: grpc hosting learn mailserver scaffolder webserver ${destination}/index.html

${destination}/index.html: hosting index.m4.html ${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html

${destination}/%.html: %.m4.html
	m4 -DsourceRoot=${sourceRoot} $< > $@

grpc: grpc/*.m4.html
	cd grpc; make

hosting: hosting/*.m4.html
	cd hosting; make
	
learn: learn/*.m4.html
	cd learn; make
	
mailserver: mailserver/*.m4.html
	cd mailserver; make
	
scaffolder: scaffolder/*.m4.html
	cd scaffolder; make
	
webserver: webserver/*.m4.html
	cd webserver; make

