package main

import (
    "fmt"
    "log"
    "net/http"
)

// fib calculates the n-th Fibonacci number
func fib(n int) int {
    if n <= 1 {
        return n
    }
    return fib(n-1) + fib(n-2)
}

func handler(w http.ResponseWriter, r *http.Request) {
    n := 42 // A number that results in considerable computation
    fmt.Fprintf(w, "Fibonacci number at position %d is: %d\n", n, fib(n))
}

func main() {
    http.HandleFunc("/", handler)
    log.Fatal(http.ListenAndServe(":8080", nil))
}
