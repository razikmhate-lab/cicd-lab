pipeline {
    agent any

    // Add this environment block to fix the PATH
    environment {
        PATH = "/var/lib/jenkins/.local/bin:${env.PATH}"
    }

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
                // This command will now work
                sh 'pytest test_app.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh './deploy.sh'
                // Your deployment steps here
            }
        }
    }
}