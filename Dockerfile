FROM python:3.4
MAINTAINER Anurag Ghosh "anurag.ghosh@aricent.com"
RUN mkdir /app
COPY udp-server.py /app
COPY calculator_common.py /app
WORKDIR /app
CMD ["python", "udp-server.py"]
EXPOSE "10000"
