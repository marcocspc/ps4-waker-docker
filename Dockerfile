FROM node:current-alpine3.17

RUN mkdir -p /data/credentials

RUN npm install -g ps4-waker

ENTRYPOINT [ "/usr/local/bin/ps4-waker" , "-c" , "/data/credentials/.ps4-wake.credentials.json" ]
