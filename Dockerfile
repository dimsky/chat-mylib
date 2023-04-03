# 基础镜像
FROM python:3.10

# 将文件拷贝到容器中
WORKDIR /app
COPY . /app

# 安装依赖
RUN pip install -r /app/requirements.txt

# # 安装Qdrant向量数据库
# RUN docker pull qdrant/qdrant
# RUN docker run -d -p 6333:6333 -v $(pwd)/qdrant_storage:/qdrant/storage --name qdrant qdrant/qdrant

# # 安装MySQL数据库
# RUN docker pull mysql:8.0
# RUN docker run -d -p 3306:3306 --name mysql8.0 \
#     -e MYSQL_ROOT_PASSWORD=root \
#     -e MYSQL_DATABASE=mylib \
#     -v $(pwd)/scripts:/docker-entrypoint-initdb.d \
#     mysql:8.0

# 设置环境变量
# ENV OPENAI_API_KEY={你的OPENAI_API_KEY}

EXPOSE 3001

# 运行服务
CMD ["python", "server.py"]