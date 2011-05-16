.SILENT:

all: compile install

compile : post-to-twitter.applescript
	osacompile -o "Post to Twitter.scpt" post-to-twitter.applescript

install : compile
	cp "Post to Twitter.scpt" "/Users/marcusf/Library/Application Support/NetNewsWire/Scripts/"
