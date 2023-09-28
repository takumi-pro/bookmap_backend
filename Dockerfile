# development
FROM golang:1.19-alpine3.18 as dev
WORKDIR /go/src/app
RUN apk update && apk add git
COPY go.mod go.sum /go/src/app
RUN go mod download
COPY . /go/src/app
CMD ["go", "run", "main.go"]

# golang build process
FROM golang:1.19-alpine3.18 as build
WORKDIR /go/src/app
RUN apk update && apk add git
COPY go.mod go.sum ./
RUN go mod download
COPY . /go/src/app
RUN CGO_ENABLED=0 GOOS=linux go build -o /main

# golang production image
FROM gcr.io/distroless/base-debian11 AS build-release-stage
WORKDIR /go/src/app
COPY --from=build /main /main
ENTRYPOINT ["/main"]

