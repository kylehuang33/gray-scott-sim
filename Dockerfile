FROM gcc:latest AS build

RUN apt-get update && apt-get install -y cmake

WORKDIR /app

COPY . /app

WORKDIR /app/build

RUN cmake .. && make

FROM debian:latest

WORKDIR /app

COPY --from=build /app/build/GrayScottSim /app
COPY --from=build /app/build/gstesting /app

CMD  ["./GrayScottSim"]