FROM docker.elastic.co/logstash/logstash-oss:7.10.2

USER root
RUN yum install -y -q epel-release; \
    yum install -y -q jq; \
    rm -rf /var/cache/yum
# Back to what was used in parent image
USER 1000


COPY *.gem /test/gems/

RUN logstash-plugin install /test/gems/logstash-filter-airflow-0.1.0.gem
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
COPY test/pipeline/ /usr/share/logstash/pipeline/
COPY test/inputs/ /test/inputs/
COPY test/scripts/ /test/scripts/
ENTRYPOINT /test/scripts/entrypoint.sh