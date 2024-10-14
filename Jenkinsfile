pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/PSBLaLaHey/next-test-jenkins'
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building..."'
                
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
            }
        }
    }
}
