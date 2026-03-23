pipeline {
    agent any

    environment {
        DIR_PATH  = "/home/administrator/mydir"
        FILE_PATH = "/home/administrator/mydir/myfile.txt"
    }

    stages {

        stage('Create Directory') {
            steps {
                sh '''
                if [ ! -d "$DIR_PATH" ]; then
                    sudo mkdir -p "$DIR_PATH"
                    echo "Directory created successfully"
                else
                    echo "Directory already exists"
                fi
                '''
            }
        }

        stage('Create File') {
            steps {
                sh '''
                if [ -d "$DIR_PATH" ]; then
                    sudo touch "$FILE_PATH"
                    echo "File created successfully"
                else
                    echo "Directory does not exist"
                    exit 1
                fi
                '''
            }
        }

        stage('Change File Permission') {
            steps {
                sh '''
                if [ -f "$FILE_PATH" ]; then
                   sudo chmod 755 "$FILE_PATH"
                    echo "File permission changed successfully"
                else
                    echo "File does not exist"
                    exit 1
                fi
                '''
            }
        }
    }

    post {
        success {
            echo "Pipeline executed successfully ✅"
        }
        failure {
            echo "Pipeline failed ❌"
        }
    }
}
