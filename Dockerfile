FROM nginx:1.27-alpine
RUN sed -i \
      -e 's/listen       80;/listen       3000;/' \
      -e 's/listen  \[::\]:80;/listen  [::]:3000;/' \
      /etc/nginx/conf.d/default.conf
EXPOSE 3000
HEALTHCHECK --interval=5s --timeout=3s CMD wget -q -O - http://localhost:3000/ || exit 1
