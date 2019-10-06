# AWVS_12.0.190902105_x64 Dockerfile by Coco413

FROM ubuntu:16.04
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get -y install libxdamage1 libgtk-3-0 libasound2 libnss3 libxss1 libx11-xcb1 sudo bzip2 wget expect apt-utils net-tools \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY ./acunetix_12.0.190902105_x64.sh .
RUN chmod u+x acunetix_12.0.190902105_x64.sh
RUN sh -c '/bin/echo -e "\nyes\nubuntu\nadmin@dota.com\nDota123!!!\nDota123!!!\n"| /root/acunetix_12.0.190902105_x64.sh'
COPY ./patch /home/acunetix/.acunetix/v_190902105/scanner
COPY ./patch.dat /home/acunetix/.acunetix/v_190902105/scanner
COPY ./tpls-bundle.js /home/acunetix/.acunetix/v_190902105/ui/scripts
RUN chmod u+x /home/acunetix/.acunetix/v_190902105/scanner/patch

USER acunetix
EXPOSE 3443
CMD  /home/acunetix/.acunetix/start.sh
