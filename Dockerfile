FROM mk0x/docker-clamav:alpine
COPY scan.sh /scan.sh
RUN chmod 0755 /scan.sh
RUN echo "*/30     *       *       *       *       /scan.sh" >> /etc/crontabs/root 2>&1
COPY start.sh /start.sh
RUN chmod 0755 /start.sh
