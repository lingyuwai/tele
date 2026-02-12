# 使用官方 PHP + Apache 镜像（或 nginx，如果你喜欢）
FROM php:8.2-apache

# 安装需要的 PHP 扩展（根据你的脚本需要加，比如 curl、json 已内置）
RUN docker-php-ext-install pdo_mysql  # 如果用到数据库就加，否则删掉

# 复制你的代码到容器
COPY . /var/www/html/

# 设置工作目录
WORKDIR /var/www/html

# 暴露 80 端口（Render 会自动处理 HTTPS）
EXPOSE 80

# Apache 默认启动，不需要额外命令
