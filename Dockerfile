FROM centos:latest
RUN dnf install httpd -y
CMD ["httpd", "-D", "FOREGROUND"]
RUN echo "Hello this container is from Dockerfile " > /var/www/html/index.html
