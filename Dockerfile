FROM golang:1.17-alpine

ARG PORT
ENV PORT=$PORT

WORKDIR /usr/src/app

COPY . .

RUN go mod download
RUN go build -o app-server

CMD ["app"]

EXPOSE $PORT
