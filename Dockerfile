FROM lehoanglong/nginx:latest
RUN rm /var/log/nginx/access.log &&\
    rm /var/log/nginx/error.log 
COPY start.sh nginx.template /opt/nginx/
RUN chmod 744 opt/nginx/start.sh

CMD /opt/nginx/start.sh