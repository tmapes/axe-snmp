FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.32.1@sha256:e936a88678ebb732e87331b379d8e9ef6ff109ae8788b5ee9ee42fa997952f35

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
