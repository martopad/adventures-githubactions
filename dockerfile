FROM centos:8.1.1911

LABEL maintainer "martin.yung@nokia.com"

RUN yum install -y  \
    cmake-3.11.4 \
    gcc-8.3.1 \
    gcc-c++-8.3.1 \
    make-4.2.1

ARG BUILD_DATE
LABEL build.version=${BUILD_DATE}

ARG BUILD_VERSION
LABEL build.version=${BUILD_VERSION}

ARG BUILD_TYPE
LABEL build.type=${BUILD_TYPE}

COPY app/ /build/app/

RUN mkdir -p /build/bin/${BUILD_TYPE}
WORKDIR /build/bin/${BUILD_TYPE}
RUN cmake -DCMAKE_BUILD_TYPE=${BUILD_TYPE} /build/app/
RUN make install

ENTRYPOINT [ "myapp" ]
CMD [ "defaultID" ]
