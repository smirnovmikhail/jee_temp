FROM tomcat:8.0.20-jre8
COPY /target/test.war /usr/local/tomcat/webapps/
EXPOSE 8080 8081
