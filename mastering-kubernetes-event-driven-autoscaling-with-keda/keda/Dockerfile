FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN GOOS=linux GOARCH=amd64 go build -o myserver main.go
RUN chmod +x myserver

FROM gcr.io/distroless/static:nonroot
COPY --from=builder /app/myserver /myserver
CMD ["/myserver"]
