pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building by Zipping Up Artifacts"
                sh 'zip my_build.zip my_addition_app.sh'
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
                // This is where we would deploy to servers, but for simplicity just removing the file
                echo "Deploying"
                sh 'rm my_build.zip'
            }
        }
    }
}
