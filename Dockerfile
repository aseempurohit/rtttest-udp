FROM ubuntu:latest
MAINTAINER Anurag Ghosh "anurag.ghosh@aricent.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN mkdir /app
COPY udp-server.py /app
COPY calculator_common.py /app
WORKDIR /app
ENTRYPOINT ["/usr/bin/python"]
CMD ["udp-server.py"]
EXPOSE "10000"
