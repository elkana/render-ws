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
      steps {
        def dockerHome = tool 'mydocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
        sh 'docker build .'
      }
    }
  }
}
