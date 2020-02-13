# Pull base image 
From tomcat:latest

# take the war file and copy to tomcat webapps 
MAINTAINER "valaxytech@gmail.com" 
COPY target/*.war /usr/local/tomcat/webapps/
