FROM httpd

ARG WEB_DIRECTORY=www.liyeplimal.net.zip

LABEL maintainer="Tia M"
RUN apt -y update && \
    apt -y install wget && \
    apt -y install unzip

WORKDIR /usr/local/apache2/htdocs/

RUN rm -rf * && \
    wget https://linux-devops-course.s3.amazonaws.com/WEB+SIDE+HTML/$WEB_DIRECTORY.zip && \
    unzip $WEB_DIRECTORY.zip && \
    cp -R $WEB_DIRECTORY/* . && \
    rm -rf $WEB_DIRECTORY.zip && \
    rm -rf $WEB_DIRECTORY

USER root
ENTRYPOINT ["httpd-foreground"]
EXPOSE 80
