FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.32.0@sha256:b415e563e59e725ebaaf564413583c3339cf98be03f49b68d26ccfcaaad26713

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
