# SonarQube

Code quality and security analysis with PostgreSQL.

**Version**: SonarQube 2025.5.0 Developer Edition | PostgreSQL 18.1

## Start

```bash
# Set system limits first
sudo sysctl -w vm.max_map_count=524288

make up sonarqube
```

## Access

- **Web UI**: http://localhost:3230 (admin/admin)

## Scan Project

1. Generate token in UI
2. Create `sonar-project.properties`:

```properties
sonar.projectKey=my-project
sonar.host.url=http://localhost:9000
sonar.login=YOUR_TOKEN
```

3. Run scanner:
```bash
sonar-scanner
```
