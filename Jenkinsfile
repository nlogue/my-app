pipeline {
	agent any
	stages{
	stage("Build"){
		steps{
		echo "building"
		sh 'mvn install _DskipTests'
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
