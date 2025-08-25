pipeline{
 
    agent any

    environment {
        JIRA_SITE = 'JiraEC2' // Must match the name configured in Jenkins
    }
    
    tools{
    maven 'maven3.9.9'
    }
   
    stages{
   
      //Getting the code from GitHub Repo
      stage('CheckoutCode'){
      steps{
     
    git branch: 'dev', credentialsId: 'GITHUB_passwd', url: 'https://github.com/hariom681/maven-web-application.git'
    }
      }
     
      //After getting code doing the build using maven
      stage('Build'){
      steps{
       sh "mvn clean package"
      }
      }
     
      //Executing sonarqube Report
      stage('SOnarQubeReport'){
      steps{
       sh "mvn sonar:sonar"
      }
      }
     
      //Uploading artifcats into Nexus repo
     
      stage('UploadArtifactinotNexus'){
      steps{
       sh "mvn deploy"
      }
      }
     
     
      stage('DeployAppintoTomcatServer'){
      steps{
      sshagent(['ddea7f66-97f6-44ea-91d4-118a83a303e5']) {
        sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@13.235.94.46:/opt/tomcat9/webapps/"
      }
      }
      }

     
 
     stage('Create Jira Issue') {
     steps {
            script {
                    def issue = jiraNewIssue issue: [
                        fields: [
                            project     : [ key: 'LTI' ],
                            summary     : 'Automated issue from Jenkins',
                            description : 'This issue was created automatically by a Jenkins pipeline.',
                            issuetype   : [ name: 'Task' ]
                        ]
                    ], site: env.JIRA_SITE
 
                    echo "✅ Created Jira issue: ${issue.data.key}"
                }
            }
        }
    
 
    }//Stages Closing
    }
   
 
