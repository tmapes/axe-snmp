FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.32.3@sha256:d2e40d67f84dfd38c95efa7ee4dde2f1b31def5415741a06fe9d1cf1aa3de261

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
