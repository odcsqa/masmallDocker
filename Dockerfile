FROM docker/whalesay:latest
ENV http_proxy http://10.68.69.53:80
ENV https_proxy http://10.68.69.53:80
ENV no_proxy ".us.oracle.com,.oraclecorp.com,.uk.oracle.com,10.*"
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay
