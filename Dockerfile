FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.33.0@sha256:680458a3a0a4697b23a6b2d390991f7afd55589b734a9b1ff76b67045159ccbb

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
