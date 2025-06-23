pipeline{
  agent any

  stages{
    stage('Build Jar'){
      steps{
        sh "mvn clean package -DskipTests"
      }
    }

    stage('Build Image'){
      steps{
        sh "docker build -t silver3456/selenium ."
      }
    }

    stage('Push image'){
      environment{
         DOCKER_HUB = credentials('dockerhub-creds')
      }
      steps{
        sh 'echo ${DOCKER_HUB_PSW} | docker login -u ${DOCKER_HUB_USR} --password-stdin'
        sh "docker push silver3456/selenium"
      }
    }
  }

  post {
     always {
        sh "docker logout"
     }
  }
}