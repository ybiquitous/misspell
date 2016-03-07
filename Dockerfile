FROM nickg/golang-dev-docker
MAINTAINER nickg@client9.com

# This creates a testing image for `misspell`
#
# * Alpine Linux
# * Golang
# * SCOWL word list
#
# Downloads
#  http://wordlist.aspell.net/dicts/
#  --> http://app.aspell.net/create
#
# cache buster
RUN echo 1457339114

ENV SOURCE http://app.aspell.net/create?max_size=70&spelling=US&max_variant=1&diacritic=both&special=hacker&special=roman-numerals&download=wordlist&encoding=utf-8&format=inline
RUN true \
  && mkdir /scowl-wl \
  && wget -O /scowl-wl/words.txt ${SOURCE}
