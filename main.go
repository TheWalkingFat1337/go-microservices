package main

import (
	"github.com/TheWalkingFat1337/go-microservices/config"
	"github.com/TheWalkingFat1337/go-microservices/routes"
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.New()
	config.Connect()
	routes.UserRoute(router)
	router.Run(":1234")
}
