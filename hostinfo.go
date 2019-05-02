package main

import (
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", hostinfo)
	http.ListenAndServe("0.0.0.0:8080", nil)
}

func hostinfo(w http.ResponseWriter, r *http.Request) {
	hostname, err := os.Hostname()
	if err != nil {
		w.Write([]byte("Hello, World!"))
	} else {
		w.Write([]byte("Hello from " + hostname))
	}
}
