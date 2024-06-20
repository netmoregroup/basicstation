pipeline {
	agent {
		label "master"
	}
	options {
		disableConcurrentBuilds()
		buildDiscarder(logRotator(numToKeepStr: '10'))
	}
	parameters {
		booleanParam(name: 'cleanBuild', defaultValue: false, description: 'Force rebuild of build environment')
	}
	stages {
		stage('Build build environment') {
			steps {
				script {
					if(params.cleanBuild) {
						sh(script:"docker rmi bs-compile:buster || true")
						sh(script:"docker build -t bs-compile:buster --no-cache netmore")
					} else {
						sh(script:"docker image ls bs-compile:buster | grep bs-compile || docker build -t bs-compile:buster netmore")
					}
				}
			}
		}
		stage('Compile') {
			steps {
				sh(script:"docker run --rm -v ${env.WORKSPACE}:/basicstation bs-compile:buster /bin/bash -c 'cd /basicstation; rm -fr build-local build-rpi-std; make platform=rpi variant=std'")
			}
		}
	}
	post {
		success {
			archiveArtifacts("build-rpi-std/bin/station")
		}
	}
}
