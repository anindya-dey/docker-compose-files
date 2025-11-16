# Monitoring Stack

Prometheus + Grafana + AlertManager + Node Exporter.

**Version**: Prometheus 3.7.3 | Grafana 12.2.1 | AlertManager 0.29.0 | Node Exporter 1.9.1

## Start

```bash
make up monitoring
```

## Access

- **Grafana**: http://localhost:3130 (admin/admin)
- **Prometheus**: http://localhost:3131
- **AlertManager**: http://localhost:3132

## Setup Grafana

1. Login and change password
2. Add Prometheus data source: `http://prometheus:9090`
3. Import dashboards (ID: 1860 for Node Exporter)

## Monitor Services

Edit `prometheus.yml` to add scrape targets for your services.
