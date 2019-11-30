FROM alpine:3.4
RUN apk update && apk add cmake git && \ 
  git clone --recursive https://github.com/WebAssembly/wabt.git /watsrc && \
  mkdir /watsrc/build
WORKDIR /watsrc/build
RUN cmake .. && cmake --build .
