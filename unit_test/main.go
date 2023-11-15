package main

import (
	"log"
	"net/http"
	"unit_test/user"
)

func main() {
	const address = ":3000"

	http.HandleFunc("/users/", user.Handler)

	log.Fatal(http.ListenAndServe(address, nil))
}
