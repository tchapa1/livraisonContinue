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
						sh "ansible-playbook /home/tchapa/Desktop/myapp/myapp/Ansible/build.yml -i /home/tchapa/Desktop/myapp/myapp/Ansible/inventory/host.yml"
						}
					}
				}
		stage('docker') {
				steps {
					script{
						sh "ansible-playbook /home/tchapa/Desktop/myapp/myapp/Ansible/docker.yml -i /home/tchapa/Desktopmyapp/myapp/Ansible/inventory/host.yml"
						}
					}

				}

		}
}
