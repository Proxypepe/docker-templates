FROM golang:1.18-alpine AS builder

WORKDIR /NoteServise

COPY . .

RUN go mod download

RUN go build -o build app/src/cmd/main/app.go


FROM alpine:3.14

WORKDIR /code

COPY --from=builder /NoteServise/build .

EXPOSE 8080

CMD ["./build"]
