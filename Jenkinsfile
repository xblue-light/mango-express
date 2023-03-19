pipeline {
    agent any
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
                sh 'node ./src/index.js'
            }
        }
    }
}