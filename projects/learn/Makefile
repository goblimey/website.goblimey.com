webRoot=/var/www/html/goblimey

sourceRoot=../..

# The name of this directory, eg "projects/grpc".
nameOfThisDirectory=projects/$(notdir $(shell pwd))

# Every template depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html ${sourceRoot}/definitions.m4

# The destination for the pages produced, eg /var/www/html/goblimey/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html \
	${destination}/1.installing.learn.html \
	${destination}/1a.windows.html \
	${destination}/1b.mac.html \
	${destination}/1c.debian.html \
	${destination}/1d.amazon.e2.html \
	${destination}/2.running.learn.html \
	${destination}/3.shutting.down.html \
	${destination}/4.about.learn.html \
	${destination}/5.permanent.installation.html

${destination}/index.html: index.m4.html ${includes}

${destination}/1.installing.learn.html: 1.installing.learn.m4.html ${includes}

${destination}/1a.windows.html: 1a.windows.m4.html ${includes}

${destination}/1b.mac.html: 1b.mac.m4.html ${includes}

${destination}/1c.debian.html: 1c.debian.m4.html ${includes}

${destination}/1d.amazon.e2.html: 1d.amazon.e2.m4.html ${includes}

${destination}/2.running.learn.html: 2.running.learn.m4.html ${includes}

${destination}/3.shutting.down.html: 3.shutting.down.m4.html ${includes}

${destination}/4.about.learn: 4.about.learn.m4.html ${includes}

${destination}/5.permanent.installation.html: 5.permanent.installation.m4.html ${includes}

${destination}/%.html: %.m4.html
	m4 -DsourceRoot=${sourceRoot} $< > $@
