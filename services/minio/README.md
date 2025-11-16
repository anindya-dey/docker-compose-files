# MinIO

S3-compatible object storage with console UI.

**Version**: MinIO RELEASE.2025-09-07T16-13-09Z

## Start

```bash
make up minio
```

## Access

- **Console**: http://localhost:3111 (minioadmin/minioadmin)
- **API**: http://localhost:9000

## Commands

```bash
# Install mc CLI
brew install minio/stable/mc

# Configure
mc alias set local http://localhost:9000 minioadmin minioadmin

# Create bucket
mc mb local/my-bucket

# Upload file
mc cp file.txt local/my-bucket/

# List objects
mc ls local/my-bucket
```
