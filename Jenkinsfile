pipeline {
    agent {
        node {
            label 'jenkins slave'
        }
    }
    stages{
        stage('verify git branch'){
            steps{
                echo '$GIT_BRANCH'
            }
        }
        stage('build on main branch'){
            steps{
                sh 'pip install -r requirements.txt'
                sh 'python main.py'
            }
        }
        stage('create docker image'){
            steps{
                sh 'docker build -t myflaskapp .'
                sh 'docker run -d -p 5000:5000 myflaskapp'
                echo 'deployed successfully'
            }
        }
    }
}