FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.32.1@sha256:67d37340cdccd4844c124fd187b31ef7244e9e3b0b63e739291ab5b03ff392b0

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
