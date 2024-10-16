pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                sh 'echo "Checking out..."'
                script {
                    cleanWs()
                    git branch: "main", url: 'https://github.com/PSBLaLaHey/next-test-jenkins'
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
                sh 'docker-compose down'
                sh 'docker-compose up -d --build'
            }
        }
    }
}
