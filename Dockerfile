FROM httpd
RUN apt -y update
RUN apt -y install wget
RUN apt -y install unzip
WORKDIR /usr/local/apache2/htdocs/
RUN rm -rf *
RUN wget https://linux-devops-course.s3.amazonaws.com/WEB+SIDE+HTML/www.liyeplimal.net.zip 
RUN unzip www.liyeplimal.net.zip 
RUN cp -R www.liyeplimal.net/* . 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
