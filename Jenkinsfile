pipeline {
    agent any
    stages {
        stage('test') {
			when{
				 changeRequest branch: "master"
			}
            steps {
                echo 'Testing..'
            }
        }

        stage('build') {
            steps {
                echo 'Building..'
				sh 'npm install'
            }
        }
		
        stage('deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
