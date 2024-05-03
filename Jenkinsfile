pipeline {
  agent none
  environment {
    def dockerHome = tool 'mydocker'
    PATH = "/usr/bin/docker:${env.PATH}"
  }  
  stages {
    stage('Hello') {
      steps {
        echo 'Hello world'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build .'
      }
    }
  }
}
