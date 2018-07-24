pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building"
            }
        }
        stage('Test') {
            steps {
                echo "Testing"
                sh './test.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying"
            }
        }
    }
}
