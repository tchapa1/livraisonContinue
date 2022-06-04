pipeline
{
	agent any
	stages {
		stage('Pull') {
				steps{
					script{
						checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[ credentialsId: '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', url: 'https://github.com/tchapa1/livraisonContinue.git']]])
						}
					}
				}

		stage('Build') {
				steps{
					script{
						sh "ansible-playbook /home/tchapa/Bureau/myapp/myapp/Ansible/build.yml -i /home/tchapa/Bureau/myapp/myapp/Ansible/inventory/host.yml"
						}
					}
				}
		stage('docker') {
				steps {
					script{
						sh "ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml"
						}
					}

				}

		}
}
