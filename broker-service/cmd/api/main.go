package main

import (
	"fmt"
	"log"
	"net/http"
)

const webPort = "80"

type BrokerApp struct{}

func main() {
	app := BrokerApp{}

	log.Printf("Starting broker service on port %s\n", webPort)

	// define http server
	srv := &http.Server{
		Addr:    fmt.Sprintf(":%s", webPort),
		Handler: app.routesHandler(),
	}

	// start the server
	err := srv.ListenAndServe()
	if err != nil {
		log.Panic(err)
	}
}
