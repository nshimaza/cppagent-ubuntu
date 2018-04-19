FROM ubuntu

RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y cmake && \
    apt-get install -y libxml2-dev && \
    apt-get install -y libcppunit-dev
ADD https://github.com/mtconnect/cppagent/archive/v1.4.0.10.tar.gz /opt/src/
RUN cd /opt/src && \
    tar zxf v1.4.0.10.tar.gz && \
    mv cppagent-1.4.0.10 cppagent && \
    cd cppagent && \
    cmake . && \
    make agent
