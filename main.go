package main

import (
	"log"
	"net/http"
	"wsf/3ADevops/handler"
)

func main() {

	myHandler := handler.NewHandler()

	server := &http.Server{
		Addr:    ":8080",
		Handler: myHandler,
	}

	log.Fatal(server.ListenAndServe())
}
