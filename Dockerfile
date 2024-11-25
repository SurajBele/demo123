FROM centos:latest
RUN yum install httpd -y
CMD ["httpd", "-D", "FOREGROUND"]
RUN echo "Hello this container is from Dockerfile " > /var/www/html/index.html
