pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }
            }
            steps {
                sh '''
                    ls -la
                    node --version
                    npm --version
                    npm ci
                    npm run build
                    ls -la
                '''
            }
        }
        stage('Test'){
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }
            }
            steps{
                echo 'Test asamasi'

                sh '''
                if [ -f build/index.html ]; then
                    echo "index.html exists"
                else
                    echo "index.html not found"
                    exit 1
                fi
                '''

                sh 'npm test'
            }
        }
    }
    post{
        always{
            echo "====++++always++++===="
<<<<<<< HEAD
            junit 'test-results/junit.xml'
=======
            junit 'test-result/junit.xml'
>>>>>>> c8f4c311d84a17f51506630df815bba313e4f41d
        }
        success{
            echo "====++++only when successful++++===="
        }
        failure{
            echo "====++++only when failed++++===="
        }
    }
}