webRoot=/var/www/html/goblimey

sourceRoot=..

# The name of this directory, eg "projects/grpc".
nameOfThisDirectory=$(notdir $(shell pwd))

# Every template depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html ${sourceRoot}/definitions.m4

# The destination for the pages produced, eg /var/www/html/goblimey/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html \
	${destination}/ada.lovelace.html \
	${destination}/alan.turing.html \
	${destination}/tea.html \
	${destination}/trig.points.html \
	${destination}/scams.html


${destination}/%.html: %.m4.html ${includes}
	m4 $< > $@
