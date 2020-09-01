FROM tomcat:8.0-alpine

LABEL maintainer="madhavi.reddy0891@gmail.com"

RUN yum install openjdk-8-jdk -y

RUN java -version

ADD sample.war /usr/local/tomcat/webapps/

COPY tomcat-users.xml /usr/local/tomcat/conf/
 
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

EXPOSE 8080

CMD ["catalina.sh", "run"]
