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
    choice(
       name: 'engineListUrl',
       description: 'Engine to use for build',
       choices: ['http://zugprojenkins/job/ivy-core_product/job/master/lastSuccessfulBuild/',
                'http://zugprobldmas/job/Trunk_All/lastSuccessfulBuild/']
    )
  }

  stages {
    stage('build') {
      steps {
        script {
          def workspace = pwd()
          maven cmd: "-P repo.axonivy.com clean deploy -e -fae " + 
                     "-Dengine.directory=$workspace/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine " +
                     "-Divy.engine.list.url=${params.engineListUrl} "
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
