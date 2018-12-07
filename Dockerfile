FROM nginx
ADD default.conf /etc/nginx/conf.d/default.conf

# using bash over sh for better signal-handling
SHELL ["/bin/bash", "-c"]
ADD run.sh /run.sh
CMD /run.sh