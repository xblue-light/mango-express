pipeline {
    agent any
    tools {
        nodejs '17.3.1'
    }
    stages {
        stage('Build') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo "Building node dependencies..."
                sh 'npm install'
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying node application..."
                sh 'pm2 start ./src/index.js'
            }
        }
    }
}