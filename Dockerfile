FROM node:7.4-alpine
RUN mkdir /rasa-nlu-data

WORKDIR /rasa-nlu-trainer
COPY . ./

# 更改 npm 的下载镜像为淘宝镜像
RUN npm config set registry https://registry.npm.taobao.org
# 修复 Error: could not get uid/gid
RUN npm config set unsafe-perm true
RUN npm i -g rasa-nlu-trainer

EXPOSE 8080

CMD ["rasa-nlu-trainer", "-p", "8080"]
