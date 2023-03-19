pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo "Building docker image..."
                sh 'docker build -t express-mango:1.0 .'
            }
        }
        stage('Deploy') {
            steps {
                echo "Run docker image and expose port 4444:3000"
                sh 'docker run -d -p 4444:3000 express-mango:1.0'
            }
        }
    }
}