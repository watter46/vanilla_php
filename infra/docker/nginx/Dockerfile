FROM nginx:1.20-alpine

ARG GROUP_NAME=hoge
ARG GROUP_ID ${GROUP_ID}
ARG USER_NAME=hoge
ARG USER_ID ${USER_ID}

RUN addgroup -S --g $GROUP_ID $GROUP_NAME
RUN adduser -u $USER_ID -G $USER_NAME -D $USER_NAME
RUN adduser $USER_NAME $GROUP_NAME
RUN chown -R $USER_NAME:$GROUP_NAME /var/cache/nginx
RUN chmod -R g+w /var/cache/nginx
RUN chown -R nginx:nginx /etc/nginx/conf.d

COPY ./infra/docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./infra/docker/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

USER $USER_NAME

WORKDIR /var/www/backend
