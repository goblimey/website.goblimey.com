webRoot=/var/www/html/goblimey

sourceRoot=../..

# The name of this directory, eg "projects/grpc".
nameOfThisDirectory=projects/$(notdir $(shell pwd))

# Every template depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html ${sourceRoot}/definitions.m4

# The destination for the pages produced, eg /var/www/html/goblimey/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html ${destination}/ssh.html ${destination}/domain.html ${destination}/server.html ${destination}/installing.software.html

${destination}/index.html: index.m4.html ${includes}

${destination}/ssh.html: ssh.m4.html ${includes}

${destination}/domain.html: domain.m4.html ${includes}

${destination}/server.html: server.m4.html ${includes}

${destination}/installing.software.html: installing.software.m4.html ${includes}

${destination}/%.html: %.m4.html
	m4 -DsourceRoot=${sourceRoot} $< > $@
