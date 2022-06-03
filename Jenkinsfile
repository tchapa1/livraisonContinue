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
						sh "ansible-playbook ansible/build.yml -i /home/tchapa/Bureau/myapp/myapp/Ansible/inventory/host.yml"
						}
					}
				}



		}
}
