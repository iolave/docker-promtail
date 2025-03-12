#!/bin/sh

sed -e 's/LOKI_HOST/'$LOKI_HOST'/g' /etc/promtail/config.yml > /etc/promtail/config_1.yml
sed -e 's/LOKI_PROTO/'$LOKI_PROTO'/g' /etc/promtail/config_1.yml > /etc/promtail/config_2.yml

/usr/bin/promtail -config.file=/etc/promtail/config_2.yml -config.expand-env=true
