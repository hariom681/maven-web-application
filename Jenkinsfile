pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building branch: ${env.BRANCH_NAME}"
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Test') {
            when {
                changeRequest()  // Runs only on PR builds
            }
            steps {
                echo "Running tests for PR #${env.CHANGE_ID}"
                sh 'mvn test'
            }
        }
    }
    post {
        success {
            echo "Build successful for ${env.BRANCH_NAME}"
        }
        failure {
            echo "Build failed for ${env.BRANCH_NAME}"
        }
    }
}
 
 
