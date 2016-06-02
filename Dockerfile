FROM python:3-alpine
MAINTAINER mdouchement

RUN pip install elasticsearch-curator

ADD crontab /etc/cron.d/curator-cron
RUN chmod 0644 /etc/cron.d/curator-cron
RUN touch /var/log/cron.log
ADD entrypoint.sh /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
