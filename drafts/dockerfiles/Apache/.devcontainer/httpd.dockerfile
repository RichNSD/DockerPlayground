FROM httpd:latest AS webserver
LABEL maintainer="rjoubert@nsd.team"

ENV ApacheDir="/usr/local/apache2"
ENV HttpdConf="/usr/local/apache2/conf/httpd.conf"


COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

CMD [""]
