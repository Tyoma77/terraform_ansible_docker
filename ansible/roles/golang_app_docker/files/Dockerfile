FROM golang:1.13.5-alpine as build
COPY /main.go /go/src/project/

WORKDIR /go/src/project/
RUN go build -o /bin/project

FROM alpine:latest as production
COPY --from=build /bin/project /bin/project
ENTRYPOINT ["/bin/project"]
CMD ["main"]
