node {
    docker.image("maven:latest").inside() {
        stage('Checkout') {
            git 'https://github.com/platymatt/RestaurantList-Maven.git'
        }
        stage('Build') {
            sh 'mvn clean install'
        }
        stage('Code Quality') {
            sh 'mvn sonar:sonar -Dsonar.projectName=SimplePipelineRestaurantList -Dsonar.projectKey=SimplePipelineRestaurantList -Dsonar.host.url=http://192.168.70.149:9090 -Dsonar.login=79cacc94d6fe30cb24562976c53de3a2436818a9'
        }
    }
}
