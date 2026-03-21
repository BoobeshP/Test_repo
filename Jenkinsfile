pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Show Workspace') {
            steps {
                sh '''
                echo "===== CURRENT DIRECTORY ====="
                pwd

                echo "===== FILES IN WORKSPACE ====="
                ls -l
                '''
            }
        }

        stage('Run Python File') {
            steps {
                sh '''
                echo "===== TRYING TO RUN PYTHON FILE ====="
                set -x
                python3 hello.py
                '''
            }
        }

        stage('Run Java File') {
            steps {
                sh '''
                echo "===== TRYING TO RUN JAVA FILE ====="
                set -x
                javac Main.java
                java Main
                '''
            }
        }
    }
}

