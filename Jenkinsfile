node {
	def app

	stage('Clone repository') {
		checkout scm
	}

	stage('Build Image') {
		app = docker.build('schauflinger/example-app')
	}

	stage('Push Image') {
		docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
			app.push('latest')
		}
	}
}
