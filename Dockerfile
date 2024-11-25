FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install apache2 -y
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
RUN echo "Hello this container is from Dockerfile " > /var/www/html/index.html
