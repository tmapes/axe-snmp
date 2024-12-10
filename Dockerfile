FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.33.0@sha256:9e1e6c928401d7d335915a83c4b7d19df29fcba5e550fe3524ef5d1c5a8d913f

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
