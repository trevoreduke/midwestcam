FROM golang:1.23-alpine AS builder

RUN apk add --no-cache git
WORKDIR /build
COPY . .
RUN go get github.com/rwcarlsen/goexif@latest && \
    go mod tidy && \
    CGO_ENABLED=0 go build -ldflags="-s -w" -o midwestcam .

FROM alpine:3.20
RUN apk add --no-cache ca-certificates
WORKDIR /app
COPY --from=builder /build/midwestcam .
COPY --from=builder /build/templates ./templates
COPY --from=builder /build/static ./static

EXPOSE 4011
CMD ["./midwestcam"]
