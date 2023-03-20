pipeline {
    agent any
    environment {
        MANGO_SECRET_1 = credentials('0b5cf62f-5c0f-43f9-a32e-0d006eb2a5a6')
    }
    stages {
        stage('Credentials') {
            steps {
                echo "$MANGO_SECRET_1" | base64
            }
        }
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