FROM node:14
COPY ./ /app
WORKDIR /app
RUN yarn install && yarn build

# 设置基础镜像
FROM nginx
COPY dist/ /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/default.conf
