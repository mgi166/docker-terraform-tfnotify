FROM hashicorp/terraform:0.11.10

ENV TFNOTIFY_VERSION=0.2.0

RUN curl -sL https://github.com/Droplr/aws-env/raw/master/bin/aws-env-linux-amd64 -o /tmp/aws-env && \
    chmod a+x /tmp/aws-env && \
    cp /tmp/aws-env /usr/local/bin/aws-env

RUN curl -sL https://github.com/mercari/tfnotify/releases/download/v${TFNOTIFY_VERSION}/tfnotify_v${TFNOTIFY_VERSION}_linux_amd64.tar.gz -o /tmp/tfnotify.tar.gz && \
    tar zxvf /tmp/tfnotify.tar.gz -C /tmp && \
    cp /tmp/tfnotify_v${TFNOTIFY_VERSION}_linux_amd64/tfnotify /usr/local/bin/tfnotify && \
    rm -rf /tmp/*
