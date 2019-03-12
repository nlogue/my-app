pipeline {
	agent none
	stages{
	stage("Build"){
	agent{
	docker{
		image 'maven:3-alpine'
	}
}
		steps{
		echo "building"
		
		}
	}	
		stage("Test"){
		agent{
		docker{
			image 'maven:3-alpine'
}
}
		steps{
			echo "testing"
		}
	}	
		stage("Deploy"){
		agent{
		docker{
			image 'maven:3-alpine'
}
}
		steps{
			echo "deploying"
		}
	    }
	stage("Docker"){

	agent{
		docker{
	
		image 'docker:latest'
	}	
	}	
		steps{
		withDockerRegistry([credentialsId: "dockerhub", url:""]){
		sh 'docker build -t nl0gue/jenkins-app .'
		sh 'ls -l'
		sh 'docker push nl0gue/jenkins-app'
		}
		}

	}
}
}
