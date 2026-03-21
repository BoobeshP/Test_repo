pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Show Files') {
            steps {
                sh '''
                echo "===== WORKSPACE ====="
                pwd
                echo "===== FILE LIST ====="
                ls -l
                '''
            }
        }

        stage('Run Python Files') {
            steps {
                sh '''
                echo "===== RUNNING test.py ====="
                python3 test.py

                echo "===== RUNNING test1.py ====="
                python3 test1.py
                '''
            }
        }

        stage('Compile & Run Java') {
            steps {
                sh '''
                echo "===== COMPILING test2.java ====="
                javac test2.java

                echo "===== RUNNING test2 ====="
                java test2
                '''
            }
        }
    }
}
