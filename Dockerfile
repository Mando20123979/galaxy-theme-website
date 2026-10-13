FROM nginx:1.27-alpine

# Render sets $PORT (default 10000). The official nginx image runs
# envsubst on /etc/nginx/templates/*.template at startup, so the
# config below listens on whatever port Render assigns.
ENV PORT=10000

COPY default.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 10000
