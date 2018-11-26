pipeline {
  triggers {
    cron '@midnight'
  }
  agent {
    dockerfile true
  }

  parameters {
    choice(choices: 'Trunk_DesignerAndServer\nTrunk_All', description: 'Engine to use for build', name: 'engineSource')
  }

  stages {
    stage('build') {
      steps {
        script {
          def workspace = pwd()
          maven cmd: "-P repo.axonivy.com clean deploy -e -fn -Dengine.directory=$workspace/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine -Dsrc.job.name=${params.engineSource}"
        }
      }
      post {
        always {
          archiveArtifacts '**/target/*.iar'
          junit '**/target/surefire-reports/**/*.xml'
        }
      }
    }
  }
}
