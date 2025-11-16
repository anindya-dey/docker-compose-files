# ELK Stack

Elasticsearch + Logstash + Kibana + Filebeat for log management.

**Version**: Elastic Stack 9.2.1

## Start

```bash
make up elk
```

## Access

- **Kibana**: http://localhost:3030
- **Elasticsearch**: http://localhost:3031

## Send Logs

Filebeat collects logs from `/var/log` inside the container. Configure Logstash to process and forward logs to Elasticsearch.

## View Logs

1. Open Kibana: http://localhost:5601
2. Management → Index Patterns → Create
3. Discover → View logs
