FROM java:8-jdk

RUN wget -q http://d3kbcqa49mib13.cloudfront.net/spark-1.1.1-bin-hadoop2.4.tgz 

RUN tar zxf spark-1.1.1-bin-hadoop2.4.tgz

RUN rm -rf spark-1.1.1-bin-hadoop2.4.tgz 

RUN mv spark-1.1.1-bin-hadoop2.4 spark-1.1.1

RUN apt-get -q update

RUN apt-get install -y python python-dev python-pip ipython ipython-notebook python-setuptools python-tornado

RUN apt-get -q update

##RUN apt-get -y install gcc gcc-c++ lapack lapack-devel blas blas-devel python-devel

RUN apt-get install -y python-scipy python-numpy

RUN apt-get install -y  python-pandas 

RUN pip install pyzmq jinja2 pygments sphinx

RUN pip install --upgrade ipython

##RUN pip install -U  scikit-learn

RUN mkdir /notebook

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

ENV SPARK_HOME /spark-1.1.1

ENV PATH $PATH:/spark-1.1.1/bin

ADD setup-notebook.sh /setup-notebook.sh

RUN chmod +x /setup-notebook.sh

RUN sh /setup-notebook.sh

WORKDIR /notebook

EXPOSE 8888

EXPOSE 4040
