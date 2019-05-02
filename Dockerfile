FROM golang:alpine
LABEL maintainer="Patrick Bucher <patrick.bucher@stud.hslu.ch>"
COPY hostinfo.go /go/src/
RUN go build -o /go/bin/hostinfo /go/src/hostinfo.go
EXPOSE 8080
ENTRYPOINT ["/go/bin/hostinfo"]
