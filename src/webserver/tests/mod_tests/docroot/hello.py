#!/usr/bin/python

print "Content-type:text/html\r\n\r\n"
print '<html>'
print '<head>'
print '<title>Hello Word - First CGI Program</title>'
print '</head>'
print '<body>'

print "<h2>[START]</h2>"

for x in range(1, 1000000):
    print "<p>Hello Word! This is my first CGI program: %d</p>" % (x)

print "<h2>[END]</h2>"

print '</body>'
print '</html>'
