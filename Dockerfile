FROM tomcat:8.0-alpine

LABEL maintainer="madhavi.reddy0891@gmail.com"

ADD jenkins.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
