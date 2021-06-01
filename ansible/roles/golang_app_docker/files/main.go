package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Printf("Запускаем свою программу!\n")

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello World!")
	})
	http.ListenAndServe(":8070", nil)
}
