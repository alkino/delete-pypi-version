FROM python:latest

RUN pip install pypi-cleanup

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "sh", "/entrypoint.sh"]
