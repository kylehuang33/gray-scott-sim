FROM gcc:latest AS build

RUN apt-get update && apt-get install -y cmake

WORKDIR /app

COPY . /app

RUN mkdir build

WORKDIR /app/build

RUN cmake .. && make
# && git clone -q https://github.com/google/googletest.git /googletest \
# && mkdir -p /googletest/build \
# && cd /googletest/build \
# && cmake .. && make && make install \
# && cd / && rm -rf /googletest

FROM debian:latest

WORKDIR /app

COPY --from=build /app/build/GrayScottSim /app

CMD  ["./GrayScottSim"]