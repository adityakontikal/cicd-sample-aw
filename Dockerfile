FROM nginx:1.27-alpine
EXPOSE 80
HEALTHCHECK --interval=5s --timeout=3s CMD wget -q -O - http://localhost/ || exit 1
