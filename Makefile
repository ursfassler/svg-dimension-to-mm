
script=svg-dimension-to-mm
namepattern='([a-z_]|-)+$$'

all:
	pylint3 --module-rgx=$(namepattern) --const-naming-style=snake_case --disable=missing-docstring $(script)

install: all
	install svg-dimension-to-mm /usr/local/bin

