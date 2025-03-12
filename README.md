# Promtail docker image for sending docker logs to loki
## Pre Requisites
Add this config to your docker daemon.json
```json
{
  "log-driver": "loki",
  "log-opts": {
    "loki-batch-size": "400",
    "loki-url": "http://127.0.0.1:3100/loki/api/v1/push"
  }
}
```

## Environment Variables

- LOKI_HOST
- LOKI_PROTO

