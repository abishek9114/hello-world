# Pull base image 
From tomcat:latest

# take the war file and copy to tomcat webapps 
MAINTAINER "valaxytech@gmail.com" 
COPY /var/lib/jenkins/workspace/docker-imagedeploy/webapp/target/webapp.war /usr/local/tomcat/webapps/
