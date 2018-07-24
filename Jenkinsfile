pipeline {
    agent any
    parameters {
            string(name: 'ARTIFACT_ID', defaultValue: 'main', description: 'The artifact ID?')
        }
    stages {
        stage('Build') {
            steps {
                echo "Building by Zipping Up Artifacts"
                sh "tar -czvf build-${params.ARTIFACT_ID}.tar.gz my_addition_app.sh"
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
                sh "rm build-${params.ARTIFACT_ID}.tar.gz"
            }
        }
    }
}
