FROM alpine:3.4
RUN apk update && apk add cmake git && \ 
  git clone --recursive https://github.com/WebAssembly/wabt.git /watsrc
WORKDIR /watsrc
