package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Hello from Jupiter!")
	})
	http.ListenAndServe(fmt.Sprintf(":%s", os.Getenv("PORT")), nil)
}
