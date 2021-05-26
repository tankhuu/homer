#!/bin/bash -xe

serviceList="docker.service|ssh.service|rsyslog.service|gateway.service|middle.service|backend.service|geocodeservice.service|importservice.service|overlay.service|plannedrollover.service|reportsserver.service|aggregateservice.service|rres.service|geocalculation.service|ivin.service|timeattendance.service"
/usr/local/bin/systemd_exporter --collector.unit-whitelist=$servicesList
