FROM ubuntu:latest

RUN  apt update && \
     apt-get install -y ruby-full build-essential zlib1g-dev
RUN gem install jekyll bundler
RUN mkdir /data
COPY docker-entrypoint.sh /
RUN ["chmod", "+x", "docker-entrypoint.sh"]
ENTRYPOINT [ "./docker-entrypoint.sh" ]
CMD ["serve"]