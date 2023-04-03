# 基于OpenAI的私有资源库问答系统

## 软件概要

本软件是一个基于OpenAI的私有资源库问答系统。企业可独立部署，将其作为内部资源智能检索工具。

场景举例：

场景A：智能客服。将用户手册、客户FQA等内容上传至系统，系统可根据资料内容回答客户的问题。

场景B：内部资料检索。将内部资料（如员工手册、企业知识等）上传至系统，员工即可用问答的方式获得内容。

## 安装说明

### 1.安装python 3.10版本
略

### 2.安装python依赖

```
pip install -r requirements.txt
```

### 3.安装Qdrant向量数据库

```
docker run -p 6333:6333 -v $(pwd)/qdrant_storage:/qdrant/storage qdrant/qdrant
```

### 4.安装MySQL数据库

先安装mysql-server(以ubuntu系统为例)
```
sudo apt install mysql-server
```

再执行/scripts目录下的脚本，创建数据库和表。

### 5.设置OPENAI_API_KEY环境变量

```
export OPENAI_API_KEY={你的OPENAI_API_KEY}
```

### 6.配置参数

复制文件.env.dist 为 .env，修改文件里的相关参数，如配置MySQL用户名/密码等

### 7.运行

```
python server.py
```

### 8.访问

访问地址：http://localhost:3001

上传txt或pdf文件，然后在对话框询问即可。


### 9.Demo站：

PC端: [http://www.chatmylib.xyz](http://www.chatmylib.xyz)  

手机端: [http://www.chatmylib.xyz/mobile](http://www.chatmylib.xyz/mobile)

## 备注

本软件前端页面引用了 [xqdoo00o/chatgpt-web](https://github.com/xqdoo00o/chatgpt-web) 的部分代码。

给产品提意见和建议点击这里：<a href="https://support.qq.com/product/538086" target="_blank">反馈</a>
