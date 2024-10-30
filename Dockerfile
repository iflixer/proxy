FROM nginx
COPY proxy/conf.d /etc/nginx/conf.d
COPY proxy/nginx.conf /etc/nginx/nginx.conf
COPY proxy/include /etc/nginx/include
COPY proxy/conf.d /etc/nginx/conf.d

# for nginx test only
RUN mkdir /opt/nginx && mkdir /opt/nginx/static

RUN nginx -t