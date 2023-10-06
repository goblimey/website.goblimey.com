webRoot=/var/www/html/goblimey

sourceRoot=..

# The name of this directory, eg "projects/grpc".
nameOfThisDirectory=$(notdir $(shell pwd))

# Every template depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html

# The destination for the pages produced, eg /var/www/html/goblimey/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html ${destination}/ada.lovelace.html ${destination}/alan.turing.html ${destination}/scams.html

${destination}/index.html: index.m4.html ${includes}

${destination}/ada.lovelace.html: ada.lovelace.m4.html ${includes}

${destination}/alan.turing.html: alan.turing.m4.html ${includes}

${destination}/scams.html: scams.m4.html ${includes}

${destination}/%.html: %.m4.html
	m4 $< > $@
