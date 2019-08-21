FROM radut/openjdk-8

RUN mkdir -p "/data"
WORKDIR /data

COPY target/ejstatd.jar ejstatd.jar
EXPOSE 7979

ENTRYPOINT exec java -jar ejstatd.jar -pr ${PORT:1099} -ph ${REMOTE_HOST_PORT:1199} -pv ${REMOTE_VM_PORT:1299}


