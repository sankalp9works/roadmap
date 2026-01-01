FROM httpd:latest
COPY ./  /usr/local/apache/htdocs/
EXPOSE 80
