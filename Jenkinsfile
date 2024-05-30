pipeline {
	agent {
		label "master"
	}
	options {
		disableConcurrentBuilds()
		buildDiscarder(logRotator(numToKeepStr: '10'))
	}
	stages {
		stage('Compile') {
			steps {
				sh(script:"./build-docker-start.sh")
			}
		}
	}
	post {
		success {
			archiveArtifacts("build-rpi-std/bin/station")
		}
	}
}
