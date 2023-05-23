FROM ubuntu:18.04

# version define in env
ENV JDK_VERSION  11.0.0.1

# insrall curl
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean

# download JDK
RUN curl -LO https://download.java.net/openjdk/jdk${JDK_VERSION}/ri/openjdk-${JDK_VERSION}_linux-x64_bin.tar.gz && \
    mkdir -p /usr/local/java/ && \
    tar -xzf openjdk-${JDK_VERSION}_linux-x64_bin.tar.gz -C /usr/local/java/ && \
    rm openjdk-${JDK_VERSION}_linux-x64_bin.tar.gz


#设置环境变量
ENV JAVA_HOME=/usr/local/java/jdk-${JDK_VERSION}
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
ENV PATH=/sbin:$JAVA_HOME/bin:$PATH

# 设置工作目录
WORKDIR /app

# 设置默认命令
CMD ["java", "-version"]




