pipeline {
  agent {
    docker {
      image 'ruby:2.5.1'
    }

  }
  stages {
    stage('step 1') {
      steps {
        sh 'bash test.sh'
      }
    }
  }
}