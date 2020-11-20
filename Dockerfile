FROM golang:1.15-alpine AS builder
WORKDIR /go/src/github.com/bdwyertech/registrator/
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build \
		-a -installsuffix cgo \
		-ldflags "-X main.Version=$(cat VERSION)" \
		-o bin/registrator \
		.

FROM alpine
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/src/github.com/bdwyertech/registrator/bin/registrator /bin/registrator

ENTRYPOINT ["/bin/registrator"]
