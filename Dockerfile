FROM tomcat:9.0.12-jre8
COPY /target/vaadin-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080 8081
