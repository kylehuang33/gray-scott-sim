FROM gcc:latest AS build

RUN apt-get update && apt-get install -y cmake

WORKDIR /app

COPY . /app

WORKDIR /app/build

RUN cmake .. && make

CMD ["bash"]

# FROM debian:latest

# WORKDIR /app

# COPY --from=build /app/build/GrayScottSim /app

# CMD  ["./GrayScottSim"]