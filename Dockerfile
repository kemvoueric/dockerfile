FROM tomcat
LABEL maintainer="Tia M"
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf *
RUN wget https://warfiles-for-docker.s3.amazonaws.com/addressbook.war
CMD ["catalina.sh", "run"]
EXPOSE 8080
