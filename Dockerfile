FROM gapsystem/gap-docker

RUN sudo mkdir -p /home/gap/.gap/pkg

ADD export.g .
ADD export.sh /export.sh
VOLUME /data/
CMD ["bash", "/export.sh"]