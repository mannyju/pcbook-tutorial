gen: 
	protoc --go_out=pcbook/pcbookpb --go_opt=paths=source_relative \
     --go-grpc_out=pcbook/pcbookpb --go-grpc_opt=paths=source_relative \
    pcbook/proto/*.proto

clean: 
	rm pcbook/pb/*.go

run :
	go run main.go