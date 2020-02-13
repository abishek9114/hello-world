node{
  
  stage('SCM-Checkout'){
    git 'https://github.com/abishek9114/hello-world.git'
  }
  
  stage('Complie-Package'){
    def mvnHome = tool name: 'maven-plugin', type: 'maven'
    sh "${mvnHome}/bin/mvn clean package"
  }
  
  stage('Sonar-Qube'){
    def mvnHome = tool name: 'maven-plugin', type: 'maven'
    withSonarQubeEnv('sonaradmin'){
      sh "${mvnHome}/bin/mvn sonar:sonar"
    }
      
  }
    
      
  stage('Build Docker Image'){
    sh 'docker build -t abishek9114/helloworld .'
  
  }
  
  
  stage('Slack-Notification'){
    slackSend baseUrl: 'https://hooks.slack.com/services/', 
    channel: '#jenkins-pipeline-practice', 
    color: 'good', 
    message: 'Hello-Word App test', 
    tokenCredentialId: '73e70256-ad02-4139-847a-057637efd0f9'
  }





}
