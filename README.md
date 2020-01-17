# 意图与槽位标注系统

## 系统部署安装

- 使用docker构建

~~~python
docker build -f Dockerfile -t labelsystem/intention .   # 构建镜像
docker save -o labelsystem_intention.tar labelsystem/intention  # 导出镜像
tar -czvf labelsystem_intention.tar.gz labelsystem_intention.tar  # 压缩
tar -xzvf labelsystem_intention.tar.gz  # 解压
docker load -i labelsystem_intention.tar  # 镜像导入
~~~

- docker镜像启动

~~~python
docker run -dit -p 11999:8080 --name intention labelsystem/intention  # 首次启动
docker run -dit -p 11999:8080 -v /home/d5000/dialogue_system/label_system/label_system_intention/testData.json:/rasa-nlu-trainer/data/testData.json --privileged --name intention labelsystem/intention  # 首次启动，挂载目录
docker start intention  # 启动
docker stop intention  # 关闭
docker rm intention  # 删除
~~~

## 依赖环境安装

- nodejs安装：<https://www.runoob.com/nodejs/nodejs-install-setup.html>

~~~python
可参考：
Linux上安装 Node.js
直接使用已编译好的包
~~~

- npm依赖包安装：

~~~python
在可以连网的机器上将rasa-nlu-trainer安装到node_modules中一个单独的rasa-nlu-trainer文件夹中
npm install rasa-nlu-trainer --global-style
将rasa-nlu-trainer中的node_modules拷贝到目标机器中该项目的目录下
~~~

## 项目编译

- 参考：README_rasa.md
