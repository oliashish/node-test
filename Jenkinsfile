pipeline {
    agent any
    stages {
        stage('test') {
			when{
				//  changeRequest branch: "master"
				 expression {
					 if (env.CHANGE_ID) {
						echo "====++++testing++++===="
					 } else {
						echo "====++++testing else++++===="
					 }
				 }
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
