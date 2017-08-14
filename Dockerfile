FROM ubuntu:latest
MAINTAINER Anurag Ghosh "anurag.ghosh@aricent.com"
#ENV http_proxy "http://165.225.104.34:80"
#ENV https_proxy "http://165.225.104.34:80"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN mkdir /app
COPY udp-server.py /app
COPY calculator_common.py /app
WORKDIR /app
#ENV http_proxy ""
#ENV https_proxy ""
ENTRYPOINT ["/usr/bin/python"]
CMD ["udp-server.py"]
EXPOSE "10000"
