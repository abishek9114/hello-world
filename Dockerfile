# Pull base image 
From tomcat:latest

# take the war file and copy to tomcat webapps 
MAINTAINER "valaxytech@gmail.com" 
ADD target/webapp.war /usr/local/tomcat/webapps/

