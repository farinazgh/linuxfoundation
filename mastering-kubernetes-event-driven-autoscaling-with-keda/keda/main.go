package main

import (
	"fmt"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
	"log"
	"net/http"
	"strconv"
)

var (
	// Define a counter metric for the /add handler
	addRequests = prometheus.NewCounterVec(
		prometheus.CounterOpts{
			Name: "http_requests_total",
			Help: "Total number of requests to the add handler.",
		},
		[]string{"endpoint"},
	)
)

func init() {
	// Register custom metrics with Prometheus
	prometheus.MustRegister(addRequests)
}

// fib calculates the n-th Fibonacci number
func fib(n int) int {
	if n <= 1 {
		return n
	}
	return fib(n-1) + fib(n-2)
}

var count int

func handler(w http.ResponseWriter, r *http.Request) {
	addRequests.WithLabelValues("/").Inc()
	count++
	fmt.Printf("Request number is: %d\n", count)
	defaultNumber := 42
	numberStr := r.URL.Query().Get("number")
	n := defaultNumber
	if numberStr != "" {
		parsedNumber, err := strconv.Atoi(numberStr)
		if err != nil {
			// Handle the error in case of bad input
			fmt.Fprintf(w, "Invalid number format: %s\n", numberStr)
			return
		}
		if parsedNumber != 0 {
			n = parsedNumber
		}
	}
	fmt.Fprintf(w, "Fibonacci number at position %d is: %d\n", n, fib(n))
}

func main() {
	http.HandleFunc("/", handler)
	// Expose the default Prometheus metrics at `/metrics` endpoint
	http.Handle("/metrics", promhttp.Handler())
	fmt.Println("Starting server on port 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
