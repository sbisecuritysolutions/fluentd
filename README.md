# fluentd

Fluentd image with datadog plugin

Determine types of logs with <source> and <match>
  
Edit API key and move file from EKSのdeployment.yaml

e.g.
- image: docker.pkg.github.com/sbisecuritysolutions/fluentd/fluentd-with-datadog-plugin:latest
  name: fluetnd
...
  lifecycle:
    postStart:
      exec:
        command: [ "/bin/sh", "-c", "sed 's/<DD_API_KEY>/'\"$DD_API_KEY\"'/g' /fluentd/etc/fluent.conf.temp > /fluentd/etc/fluent.conf" ] 
