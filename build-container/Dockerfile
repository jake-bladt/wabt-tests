FROM alpine:3.4
ENV CC gcc
ENV CXX gcc
RUN apk update && apk add make cmake git && \ 
  git clone --recursive https://github.com/WebAssembly/wabt.git /watsrc && \
  mkdir /watsrc/build
WORKDIR /watsrc/build
RUN cmake .. && cmake --build .
