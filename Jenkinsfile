pipeline {
    agent any
    environment {
        MANGO_SECRET_1 = credentials('0b5cf62f-5c0f-43f9-a32e-0d006eb2a5a6')
    }
    stages {
        stage('Credentials') {
            steps {
                sh 'echo "$MANGO_SECRET_1" | base64'
            }
        }
        stage('Login Docker Hub') {
            steps {

                // Simulate a failed build
                script {
                    if (currentBuild.result == 'SUCCESS') {
                        currentBuild.result = 'FAILURE'
                    }
                }

                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    // WARNING! Using --password via the CLI is insecure. Use --password-stdin.
                    // sh 'docker login -u $USERNAME -p $PASSWORD'

                    // The following example reads a password from a variable, and passes it to the docker login command using STDIN:
                    sh 'echo -n "$PASSWORD" | docker login -u $USERNAME --password-stdin'
                }

                echo 'Try pulling image from private image repository'
                sh 'docker pull xblue/caysixcustomimg:latest'
                sh 'docker images'
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

            // Determine if there were any test failures in which case the value would be unstable 
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS' 
                }
            }

            steps {
                echo "Run docker image and expose port 4444:3000"
                sh 'docker run -d -p 4444:3000 express-mango:1.0'
            }
        }
    }
}