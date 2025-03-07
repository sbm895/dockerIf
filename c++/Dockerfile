FROM alpine:3.19.0 AS buildstage

RUN apk update && \
    apk add --no-cache build-base

WORKDIR /app

COPY main.cpp .

RUN g++ -o main main.cpp

FROM alpine:3.19.0 AS runstage

RUN apk update && \
    apk add --no-cache libstdc++

COPY --from=buildstage /app/main /app/main

WORKDIR /app
CMD ["./main"]
