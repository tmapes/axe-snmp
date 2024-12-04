FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.32.3@sha256:75cc1d41761efb9e22574ec9a10f764b317c0f56753e18dbf4e45176deddffb7

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
