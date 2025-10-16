pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'pytest test_app.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                // This script stops the old app and starts the new one
                sh './deploy.sh'
            }
        }
    }
}