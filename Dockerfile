FROM linuxserver/code-server:4.96.4

# 创建一个新用户和用户组
RUN groupadd -r projector-user && useradd -r -g projector-user projector-user

# 设置工作目录
WORKDIR /home/projector-user

# 更改文件所有权
RUN chown -R projector-user:projector-user /home/projector-user

# 切换到新用户
USER projector-user
