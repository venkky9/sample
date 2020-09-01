FROM tomcat:8.0-alpine

LABEL maintainer="madhavi.reddy0891@gmail.com"

ADD sample.war /usr/local/tomcat/webapps/

COPY tomcat-users.xml /usr/local/tomcat/conf/

COPY Context.xml /usr/local/tomcat/webapps/manager/META-INF/
 
COPY server.xml /usr/local/tomcat/conf/
 
EXPOSE 8080

CMD ["catalina.sh", "run"]
