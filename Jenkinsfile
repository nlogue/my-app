pipeline {
	agent{
	docker{
		image 'maven:3-alpine'
}

}
	
	stages{
	stage("Build"){
		steps{
		echo "building"
		sh 'mvn install -DskipTests'
		}
	}	
		stage("Test"){
		steps{
			echo "testing"
		}
	}	
		stage("Deploy"){
		steps{
			echo "deploying"
		}
	    }
	stage('Docker'){

	agent{
		docker{
	
		image 'docker:latest'
	}	
	}	steps{

		sh 'docker build -t nl0gue/jenkins-app .'
		sh 'ls -l'
		}

	}
    }
		post{
			success{
			
		withDockerRegistry([credentialsId: "dockerhub", url: ""]){

			sh 'docker build . -t nl0gue/jenkins-app'
			sh 'ls -l'
			sh 'docker push nl0gue/jenkins-app'

}
			
}

		failure{

			}
}
