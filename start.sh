#!/bin/sh
rm /etc/nginx/conf.d/* 2> /dev/null
envsubst '${LOG_LEVEL} ${PORT} ${PORTFOLIO_HOST} ${DASHBOARD_HOST} ${BACKEND_HOST} ${PORTFOLIO_SERVER} ${DASHBOARD_SERVER} ${BACKEND_SERVER}' < /opt/nginx/nginx.template > /etc/nginx/conf.d/default.conf
nginx
sleep infinity
