FROM golang:1.23-alpine AS builder

WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -ldflags="-s -w" -o midwestcam .

FROM alpine:3.20
RUN apk add --no-cache ca-certificates
WORKDIR /app
COPY --from=builder /build/midwestcam .
COPY --from=builder /build/templates ./templates
COPY --from=builder /build/static ./static

EXPOSE 4011
CMD ["./midwestcam"]
