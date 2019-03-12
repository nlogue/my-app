pipeline {
	agent{
	docker{
		image 'maven:alpine-3'
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
    }
}
