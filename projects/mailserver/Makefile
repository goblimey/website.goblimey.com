webRoot=/var/www/html/goblimey

sourceRoot=../..

# The name of this directory, eg "projects/grpc".
nameOfThisDirectory=projects/$(notdir $(shell pwd))

# Every template depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html ${sourceRoot}/definitions.m4

# The destination for the pages produced, eg /var/www/html/goblimey/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html

${destination}/index.html: index.m4.html ${includes}

${destination}/%.html: %.m4.html
	m4 -DsourceRoot=${sourceRoot} $< > $@
