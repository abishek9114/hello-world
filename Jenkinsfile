node{
  
  stage('SCM-Checkout'){
    git 'https://github.com/abishek9114/hello-world.git'
  }
  
  stage('Complie-Package'){
    def mvnHome = tool name: 'maven-plugin', type: 'maven'
    sh "${mvnHome}/bin/mvn package"
  }
  
  stage('Sonar-Qube'){
    def mvnHome = tool name: 'maven-plugin', type: 'maven'
    withSonarQubeEnv('sonaradmin'){
      sh "${mvnHome}/bin/mvn sonar:sonar"
    }
      
  }
      
      
  stage('Deploy War on Tomcat'){
    sshagent(['tomcat-env']) {
      sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/jenkinspipeline project/webapp/target/webapp.war ec2-user@35.154.143.68:/opt/tomcat/webapps/'
}
  
  }
  
  
  stage('Slack-Notification'){
    slackSend baseUrl: 'https://hooks.slack.com/services/', 
    channel: '#jenkins-pipeline-practice', 
    color: 'good', 
    message: 'Hello-Word App test', 
    tokenCredentialId: '73e70256-ad02-4139-847a-057637efd0f9'
  }





}
