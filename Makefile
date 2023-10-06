# Makefile to create a tree of web pages from a local tree of m4 templates.
#
#     make all
#
# builds the pages from the templates.

# The destination.
webRoot=/var/www/html/goblimey

# This directory (which is passed to calls of make by this makefile)
sourceRoot=$(shell pwd)

all: ${webRoot}/index.html projects

${webRoot}/index.html: index.m4.html leader.m4.html trailer.m4.html

${webRoot}/%.html: %.m4.html
	m4 $< > $@

projects:
	cd projects; make

