# Pull base image 
From tomcat:8-jre8 

# take the war file and copy to tomcat webapps 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
