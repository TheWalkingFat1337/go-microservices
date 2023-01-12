package routes

import (
	"github.com/TheWalkingFat1337/go-microservices/controller"
	"github.com/gin-gonic/gin"
)

func UserRoute(router *gin.Engine) {
	router.GET("/", controller.GetUsers)
	router.GET("/:id", controller.GetUser)
	//router.GET("/name/:id", controller.GetUserName)
	router.POST("/", controller.CreateUser)
	router.DELETE("/:id", controller.DeleteUser)
	router.PUT("/:id", controller.UpdateUser)
}
