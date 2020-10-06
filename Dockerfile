FROM golang:1.14.9-stretch

ENV GO111MODULE=on

WORKDIR $GOPATH/src/github.com/carrotsong/ion-sfu

COPY go.mod go.sum ./
RUN cd $GOPATH/src/github.com/carrotsong/ion-sfu && go mod download

COPY pkg/ $GOPATH/src/github.com/carrotsong/ion-sfu/pkg
COPY cmd/ $GOPATH/src/github.com/carrotsong/ion-sfu/cmd
COPY config.toml $GOPATH/src/github.com/carrotsong/ion-sfu/config.toml
