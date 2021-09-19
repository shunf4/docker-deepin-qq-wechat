FROM bestwu/qq:office
LABEL maintainer='hoking <41755982@qq.com>'
ENV DPI=96
ADD entrypoint.sh /
ADD update.sh /
RUN chmod +x /entrypoint.sh
RUN chmod +x /update.sh
# RUN /update.sh
ENTRYPOINT ["/entrypoint.sh"]
