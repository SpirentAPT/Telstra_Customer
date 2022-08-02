pipeline {
    agent {label 'Jenkins_Agent_NDA1'}

    stages {
        stage('Build') {
            steps {
                git branch: 'main', credentialsId: 'jenkins_controller_SSH_PrivateKey', url: 'git@github.com:SpirentAPT/APT_Repository1.git'
		sh '/home/aptadmin/NDO_Scripts/itar_build_script.sh'
            }
        }
        stage('Test') {
            steps {
              sh  '/home/aptadmin/NDO_Scripts/nda_execution.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}