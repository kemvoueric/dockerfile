From tomcat
Maintainer Tia
RUN cd /usr/local/tomcat/webapps
RUN wget https://warfiles-for-docker.s3.amazonaws.com/addressbook.war
CMD "catalina.sh" "run"
EXPOSE 8080
