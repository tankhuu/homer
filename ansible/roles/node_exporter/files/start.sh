#!/bin/bash -xe

servicesList=".+\\.(docker|ssh|rsyslog|gateway|middle|backend|geocodeservice|importservice|overlay|reportsserver|aggregateservice|rres|geocalculation|ivin|timeattendance)"
/usr/local/bin/node_exporter --collector.textfile.directory /var/lib/node_exporter/textfile_collector \
  --collector.systemd --collector.systemd.unit-include=$servicesList
