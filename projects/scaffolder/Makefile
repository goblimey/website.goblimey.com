webRoot=/var/www/html/goblimey

sourceRoot=../..

# The name of this directory, eg "projects/grpc".
nameOfThisDirectory=projects/$(notdir $(shell pwd))

# Every template depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html

# The destination for the pages produced, eg /var/www/html/goblimey/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html ${destination}/1.1.installing.go.html ${destination}/1.2.installing.the.scaffolder.html ${destination}/1.3.installing.mysql.html ${destination}/2.1.creating.a.project.html ${destination}/2.2.the.json.spec.html ${destination}/2.3.running.the.scaffolder.html ${destination}/2.4.running.the.server.html

${destination}/index.html: index.m4.html ${includes}

${destination}/1.1.installing.go.html: 1.1.installing.go.m4.html ${includes}

${destination}/1.2.installing.the.scaffolder.html: 1.2.installing.the.scaffolder.m4.html ${includes}

${destination}/1.3.installing.mysql.html: 1.3.installing.mysql.m4.html ${includes}

${destination}/2.1.creating.a.project.html: 2.1.creating.a.project.m4.html ${includes}

${destination}/2.2.the.json.spec.html: 2.2.the.json.spec.m4.html ${includes}

${destination}/2.3.running.the.scaffolder.html: 2.3.running.the.scaffolder.m4.html ${includes}

${destination}/2.4.running.the.server.html: 2.4.running.the.server.m4.html ${includes}

${destination}/%.html: %.m4.html
	m4 $< > $@
