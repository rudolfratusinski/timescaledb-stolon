FROM timescale/timescaledb:latest-pg11-bitnami

USER 0
RUN useradd -ms /bin/bash stolon
ADD bin/stolon-keeper bin/stolon-sentinel bin/stolon-proxy bin/stolonctl /usr/local/bin/
RUN chmod +x /usr/local/bin/stolon-keeper /usr/local/bin/stolon-sentinel /usr/local/bin/stolon-proxy /usr/local/bin/stolonctl