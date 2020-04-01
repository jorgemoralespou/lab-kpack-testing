FROM quay.io/eduk8s/workshop-dashboard:master

COPY --chown=1001:0 . /home/eduk8s/

RUN mkdir -p /home/eduk8s/bin && \
    curl -sL -o /tmp/logs-linux.tgz https://github.com/pivotal/kpack/releases/download/v0.0.5/logs-v0.0.5-linux.tgz && \
    tar -C /home/eduk8s/bin -xf /tmp/logs-linux.tgz && \
    rm -rf /tmp/logs-linux.tgz && \
    curl -sL -o /tmp/pack-linux.tgz https://github.com/buildpacks/pack/releases/download/v0.5.0/pack-v0.5.0-linux.tgz && \
    tar -C /home/eduk8s/bin -xf /tmp/pack-linux.tgz && \
    rm -rf /tmp/pack-linux.tgz && \
    curl -sL -o /home/eduk8s/bin/ytt https://github.com/k14s/ytt/releases/download/v0.26.0/ytt-linux-amd64 && \
    chmod 755 /home/eduk8s/bin/ytt && \
    fix-permissions /home/eduk8s
