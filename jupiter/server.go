package main

import (
	"fmt"
	"net/http"
	"os"
	"path"
)

func main() {
	staticDirPath := path.Join(os.Getenv("KO_DATA_PATH"), "static")
	fs := http.FileServer(http.Dir(staticDirPath))
	http.Handle("/static/", http.StripPrefix("/static", fs))
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "text/html; charset=utf-8")
		fmt.Fprintln(w, `
			Hello from Jupiter!
			<br/><br/>
			<img style="heigh: 300px; width: 300px" src="/static/jupiter.png" />`)
	})
	http.ListenAndServe(fmt.Sprintf(":%s", os.Getenv("PORT")), nil)
}
