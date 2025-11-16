# Jenkins

CI/CD automation server with Docker support.

**Version**: Jenkins 2.528.2 (JDK 21)

## Start

```bash
make up jenkins
```

## Access

- **Web UI**: http://localhost:3070

## Setup

Get initial password:
```bash
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

1. Open http://localhost:8080
2. Paste password
3. Install suggested plugins
4. Create admin user

## Jenkinsfile Example

```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building..."'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Testing..."'
            }
        }
    }
}
```
