pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run Python') {
            when {
                expression { fileExists('hello.py') }
            }
            steps {
                sh 'python3 hello.py'
            }
        }

        stage('Run Java') {
            when {
                expression { fileExists('Main.java') }
            }
            steps {
                sh '''
                javac Main.java
                java Main
                '''
            }
        }
    }
}
