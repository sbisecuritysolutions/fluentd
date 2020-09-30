# fluentd/Dockerfile

FROM fluent/fluentd:v1.11-1
USER root
ADD ./conf/fluent.conf.temp /fluentd/etc
RUN ["gem", "install", "fluent-plugin-datadog", "--no-document", "--version", "0.12.1"]
#USER fluent
