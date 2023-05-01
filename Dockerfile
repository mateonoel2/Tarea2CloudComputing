FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk wget python2.7 && \
    wget https://archive.apache.org/dist/spark/spark-1.5.2/spark-1.5.2-bin-hadoop2.6.tgz && \
    tar -xzf spark-1.5.2-bin-hadoop2.6.tgz && \
    mv spark-1.5.2-bin-hadoop2.6 /spark && \
    rm spark-1.5.2-bin-hadoop2.6.tgz

ENV SPARK_HOME /spark
ENV PATH $PATH:$SPARK_HOME/bin
ENV PYSPARK_PYTHON=python2.7

COPY WordCount.py /app/WordCount.py

WORKDIR /app

CMD ["/spark/bin/spark-submit", "--class", "WordCount", "--master", "local[*]", "/app/WordCount.py", "/input/input_file.txt", "/output/output_file.txt"]