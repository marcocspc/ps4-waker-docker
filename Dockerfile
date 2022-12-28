FROM node:19.2-alpine3.17

RUN npm install -g ps4-waker

ENTRYPOINT [ "/usr/local/bin/ps4-waker" ]
