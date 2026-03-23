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
                echo "Creating directory..."
                sudo mkdir -p "$DIR_PATH"

                if sudo test -d "$DIR_PATH"; then
                    echo "Directory created successfully ✅"
                else
                    echo "Directory creation failed ❌"
                    exit 1
                fi
                '''
            }
        }

        stage('Create File') {
            steps {
                sh '''
                echo "Creating file..."
                if sudo test -d "$DIR_PATH"; then
                    sudo touch "$FILE_PATH"

                    if sudo test -f "$FILE_PATH"; then
                        echo "File created successfully ✅"
                    else
                        echo "File creation failed ❌"
                        exit 1
                    fi
                else
                    echo "Directory does not exist ❌"
                    exit 1
                fi
                '''
            }
        }

        stage('Change File Permission') {
            steps {
                sh '''
                echo "Changing file permission..."
                if sudo test -f "$FILE_PATH"; then
                    sudo chmod 755 "$FILE_PATH"
                    sudo ls -l "$FILE_PATH"
                    echo "File permission changed successfully ✅"
                else
                    echo "File does not exist ❌"
                    exit 1
                fi
                '''
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline executed successfully"
        }
        failure {
            echo "❌ Pipeline failed"
        }
    }
}
