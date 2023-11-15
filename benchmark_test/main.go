package main

import (
	"benchmark_test/user"
	"log"
	"net/http"
)

func main() {
	const address = ":3000"

	http.HandleFunc("/users/", user.Handler)

	log.Fatal(http.ListenAndServe(address, nil))
}
