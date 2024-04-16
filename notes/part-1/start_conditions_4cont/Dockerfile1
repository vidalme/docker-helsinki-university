FROM ubuntu:18.04

WORKDIR /mydir

# it runs with python
RUN apt-get update && apt-get install -y curl python

# app to download videos from youtube
RUN curl -L https://github.com/ytdl-org/youtube-dl/releases/download/2021.12.17/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+x /usr/local/bin/youtube-dl

# some sort of a bug, needed a fix from stackoveflow
# it seems ubuntu/debians images wont set the locales
# we need to do it manually then 
ENV LC_ALL=C.UTF-8

ENTRYPOINT ["/usr/local/bin/youtube-dl"]

# define a default argument
CMD ["https://imgur.com/gallery/xwJgflf"]