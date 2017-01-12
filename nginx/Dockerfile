FROM abwebfreelance/base:latest
MAINTAINER "AB Web Freelance (Aurimas Berskys)" <a.berskys@gmail.com>

# Expose 80 & 443 ports
EXPOSE 80 443

# Install nginx
COPY nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx --enablerepo=nginx && \
    yum clean all

# Forward request & error logs to docker logs

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN /entrypoint.sh

ADD init.sh /init.sh
RUN chmod +x /init.sh

VOLUME ["/etc/enginx"]
VOLUME ["/usr/share/nginx/html"]
VOLUME ["/var/www"]

# Expose 80 & 443 ports
EXPOSE 80 443

CMD /init.sh

# Add envplate for templating with env variables
RUN curl -sLo /usr/local/bin/ep https://github.com/kreuzwerker/envplate/releases/download/1.0.0-RC1/ep-linux && \
    chmod +x /usr/local/bin/ep
