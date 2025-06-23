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
      steps{
        sh "docker push silver3456/selenium ."
      }
    }
  }
}