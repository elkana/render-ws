pipeline {
  agent none
  stages {
    stage('Hello') {
      steps {
        echo 'Hello world'
      }
    }
    stage('Initialize'){
      steps {
        def dockerHome = tool 'mydocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
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
