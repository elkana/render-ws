pipeline {
  agent none
  stages {
    stage('Hello') {
      steps {
        echo 'Hello world'
      }
    }
    stage('Docker Build') {
      agent any
      environment {
        def dockerHome = tool 'mydocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
      }
      steps {
        sh 'docker build .'
      }
    }
  }
}
