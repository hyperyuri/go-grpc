gen:
	protoc --go_out=. --go-grpc_out=. proto/*.proto

clean:
	rm -rf pb

server:
	go run cmd/server/main.go -port 3080

client:
	go run cmd/client/main.go

test: 
	go test -cover -race ./...