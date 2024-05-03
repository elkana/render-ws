pipeline {
  agent { dockerfile true }
  // environment {
  //   def dockerHome = tool 'mydocker'
  //   PATH = "${dockerHome}:${env.PATH}"
  // }  
  stages {
    stage('Hello') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        echo 'Hello world'
        // sh 'echo ${env.PATH}'
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
