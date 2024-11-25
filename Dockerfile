FROM ubuntu:20.04 
RUN apt-get update 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2-utils -y
RUN apt-get install apache2 -y 
RUN echo "<h1> Hello Docker... </h1>" > /var/www/html/index.html
EXPOSE 80
CMD [“/usr/sbin/apache2”, “-D”, “FOREGROUND”]
