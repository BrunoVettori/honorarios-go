package main

import (
	"fmt"
	"net/http"
)

func main() {

	mux := http.NewServeMux()

	mux.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Println("Hello World")
		writer.Write([]byte("Usuário criado"))
	})

	fmt.Println("Listening on address 8080")

	http.ListenAndServe("localhost:8080", mux)

	// fmt.Println(internal.Add(4, 78))
	// fmt.Println("Hello World")
}
