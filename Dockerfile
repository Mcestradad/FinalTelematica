FROM ubuntu
RUN apt update
RUN apt install tzdata -y
ENV TZ="America/Bogota"
RUN apt install git -y
RUN apt install apache2 -y
RUN apt install php -y
RUN git clone https://github.com/Mcestradad/Frntnd.git
EXPOSE 80
RUN cp -r simple-php-website/* /var/www/html/
RUN rm /var/www/html/index.html