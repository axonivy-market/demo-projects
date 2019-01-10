pipeline {
  triggers {
    pollSCM 'H/5 * * * *'
    cron '@midnight'
  }
  agent {
    dockerfile true
  }
  
  options {
    buildDiscarder(logRotator(numToKeepStr: '60', artifactNumToKeepStr: '2'))
  }

  parameters {
    choice(choices: 'Trunk_DesignerAndServer\nTrunk_All', description: 'Engine to use for build', name: 'engineSource')
  }

  stages {
    stage('build') {
      steps {
        script {
          def workspace = pwd()
          maven cmd: "-P repo.axonivy.com clean deploy -e -fae -Dengine.directory=$workspace/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine -Dsrc.job.name=${params.engineSource}"
        }
      }
      post {
        always {
          archiveArtifacts '**/target/*.iar,**/target/*.zip'
          junit '**/target/surefire-reports/**/*.xml'
        }
      }
    }
  }
}
