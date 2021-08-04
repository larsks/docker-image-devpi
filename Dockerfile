FROM python:3.9

RUN pip install devpi-server devpi-web
VOLUME /data
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
CMD ["devpi-server", "--serverdir", "/data", "--host", "0.0.0.0"]
