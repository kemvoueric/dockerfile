FROM httpd
RUN apt -y update
RUN apt -y install wget
WORKDIR /usr/local/apache2/htdocs/
RUN wget https://linux-devops-course.s3.amazonaws.com/WEB+SIDE+HTML/www.liyeplimal.net.zip \
    unzip www.liyeplimal.net.zip \
    rm -rf www.liyeplimal.net.zip \
    cp -R www.liyeplimal.net/* . \
    rm -rf www.liyeplimal.net 
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80
