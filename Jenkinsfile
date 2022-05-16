pipeline {
    agent any
    stages {
        stage('test') {
			when{
				 changeRequest branch: "master"
				 expression {
					 if (env.CHANGE_ID) {
						 steps {
							 echo "testing.."
						 }
					 } else {
						 steps {
								echo "skipping.."
						 }
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
