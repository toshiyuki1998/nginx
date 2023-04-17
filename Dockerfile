FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y curl xz-utils git
RUN cd /opt  && \
    git clone -b template-1 https://github.com/toshiyuki1998/nginx.git
RUN cd /opt/nginx && \
    cp template.conf /etc/nginx/sites-available/ && \
    ln -s /etc/nginx/sites-available/template.conf /etc/nginx/sites-enabled/