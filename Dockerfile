FROM python:3.10

ARG DEVPI_SERVER_VERSION=6.9.1
ARG DEVPI_WEB_VERSION=4.2.1

RUN pip install devpi-server==$DEVPI_SERVER_VERSION devpi-web==$DEVPI_WEB_VERSION
VOLUME /data
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
CMD ["devpi-server", "--serverdir", "/data", "--host", "0.0.0.0"]
