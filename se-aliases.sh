# Search Engine Aliases
# by W. Caleb McDaniel, 2012
# 
# Free software distributed under GNU General Public License. No warranty.
#
# The idea for this was suggested by Lincoln Mullen's post on
# configuring Chrome for specific search engines. I source this file 
# in my bashrc, and then use DTerm or the Terminal to quickly search. 
# This method makes Mullen's ideas browser-independent on the Mac.
# Search engines can be tied to specific browsers using the -a flag for
# the open command. For more context, see:
#
# http://chronicle.com/blogs/profhacker/how-to-hack-urls-for-faster-searches-in-your-browser/42304


# To prepare plain-text queries for URLs, use python.
# http://ruslanspivak.com/2010/06/02/urlencode-and-urldecode-from-a-command-line/

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

# Use these at the command line by typing the function's name and the
# query. Queries with more than one word should be enclosed in double
# quotes. Literal quotes can be added to queries with the escape slash.
#
# E.g.
#
# scholar abolitionists
# scholar "American abolitionists"
# scholar "\"American abolitionists\""

function scholar
{
	open "http://scholar.google.com/scholar?hl=en&q=`urlencode "$1"`"
}

function books
{
	open "http://books.google.com/books?hl=en&q=`urlencode "$1"`"
}

function images
{
	open "http://images.google.com/images?q=`urlencode "$1"`"
}

function images
{
	open "http://images.google.com/images?q=`urlencode "$1"`"
}

function amazon
{
	open "http://www.amazon.com/s/?url=search-alias%3Daps&field-keywords=`urlencode "$1"`"
}

function ebsco
{
	open "http://ehis.ebscohost.com/eds/results?bquery=`urlencode "$1"`&bdata=JnR5cGU9MCZzaXRlPWVkcy1saXZlJnNjb3BlPXNpdGU%3d"
}
