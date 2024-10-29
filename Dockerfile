FROM --platform=linux/x86_64 docker.mapes.info/telegraf:1.32.2@sha256:6657483ac88396c3070d492ba0af73da79cac1bc4ea004e65e77fdc4044ca983

RUN curl -sLo /usr/local/bin/dumb-init https://binrepo.mapes.info/repository/github/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

COPY telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD [ "telegraf" ]
