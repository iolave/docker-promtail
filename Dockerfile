FROM grafana/promtail:3.4

RUN apt install -y sed

COPY --chmod=0755 ./entrypoint.sh /usr/bin/
COPY ./promtail-config.yml /etc/promtail/config.yml

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]

