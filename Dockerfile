# Pull base image 
From tomcat:8

# take the war file and copy to tomcat webapps 
MAINTAINER "valaxytech@gmail.com" 
COPY /var/lib/jenkins/workspace/war-deployment/webapp/target/webapp.war /usr/local/tomcat/webapps
