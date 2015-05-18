#################################################
# Debian with added nginx reverse proxy Server.
# Basic nginx reverse proxy Server.
#################################################

# Using latest debian image as base
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

ENV DEBIAN_FRONTEND noninteractive

# install dependancies
RUN apt-get update && apt-get install -y nginx

#configure proxy.conf
COPY proxy.conf /etc/nginx/conf.d/

#configure default
COPY default /etc/nginx/sites-enabled/


# startup
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
