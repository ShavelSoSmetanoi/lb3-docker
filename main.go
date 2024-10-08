package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	// Определение маршрута для главной страницы
	router.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello, работяги!",
		})
	})

	// Запуск сервера на порту 8080
	router.Run(":8080")
}
