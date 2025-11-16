# InfluxDB

Time-series database with Grafana visualization.

**Version**: InfluxDB 2.7 | Grafana 12.2.1

## Start

```bash
make up influxdb
```

## Access

- **InfluxDB**: http://localhost:3060 (admin/admin123456)
- **Grafana**: http://localhost:3001 (admin/admin)
- **Token**: `mytoken123456789`
- **Bucket**: `mybucket`

## Write Data

```bash
docker exec influxdb influx write -b mybucket -o myorg -t mytoken123456789 \
  'temperature,location=room1 value=23.5'
```

## Connect Grafana

1. Add InfluxDB data source
2. URL: `http://influxdb:8086`
3. Token: `mytoken123456789`
   1. Organization: `myorg`
