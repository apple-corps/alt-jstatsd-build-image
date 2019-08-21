FROM radut/openjdk-8

RUN mkdir -p "/data"
WORKDIR /data

COPY target/ejstatd.jar ejstatd.jar
EXPOSE 7979

ENV LD_LIBRARY_PATH /lib:/usr/lib:/usr/local/lib:${JAVA_HOME}/lib

ENTRYPOINT exec java -jar ejstatd.jar -pr ${PORT:-1099} -ph ${REMOTE_HOST_PORT:-1199} -pv ${REMOTE_VM_PORT:-1299}


