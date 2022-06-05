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
						sh "ansible-playbook /home/tchapa/Bureau/myapp/myapp/Ansible/docker.yml -i /home/tchapa/Bureau/myapp/myapp/Ansible/inventory/host.yml"
						}
					}

				}

		}
}
