pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
			    sh 'sudo apt-get install -y cppcheck'
                sh 'echo "Building..."'
                sh 'chmod +x build-bot/linux-build.sh'
                sh 'build-bot/linux-build.sh'
                archiveArtifacts artifacts: 'build/*', fingerprint: true
            }
        }
    }
}