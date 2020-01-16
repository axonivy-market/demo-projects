pipeline {
  
  agent {
    dockerfile true
  }

  triggers {
    pollSCM '@hourly'
    cron '@midnight'
  }

  options {
    buildDiscarder(logRotator(numToKeepStr: '60', artifactNumToKeepStr: '2'))
  }

  parameters {
    string(
       name: 'engineListUrl',
       description: 'Engine to use for build',
       defaultValue: 'https://jenkins.ivyteam.io/job/ivy-core_product/job/master/lastSuccessfulBuild/'
    )
  }

  stages {
    stage('build') {
      steps {
        script {
          def workspace = pwd()
          def phase = env.BRANCH_NAME == 'master' ? 'deploy' : 'verify'
          maven cmd: "-P repo.axonivy.com clean ${phase} -Dmaven.test.failure.ignore=true  " + 
                     "-Dengine.directory=${workspace}/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine " +
                     "-Divy.engine.list.url=${params.engineListUrl} "
        }
        archiveArtifacts '**/target/*.iar,**/target/*.zip'
        archiveArtifacts artifacts: '**/target/selenide/reports/**/*', allowEmptyArchive: true
        recordIssues tools: [eclipse()], unstableTotalAll: 1
        junit testDataPublishers: [[$class: 'StabilityTestDataPublisher']], testResults: '**/target/surefire-reports/**/*.xml'          
      }
    }
  }
}
