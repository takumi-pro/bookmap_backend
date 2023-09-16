package main

import (
	"net/http"

	bookmap "bookmap/src/gen"

	"github.com/labstack/echo/v4"
)

type BookMapImpl struct{}

type GetApiRoadmapsResponse struct {
	Title       string `json:"titme"`
	Description string `json:"description"`
}

func (*BookMapImpl) GetApiRoadmaps(ctx echo.Context) error {
	return ctx.JSON(http.StatusOK, GetApiRoadmapsResponse{
		Title:       "golang roadmap",
		Description: "",
	})
}

func main() {
	var bookmapApi BookMapImpl
	e := echo.New()
	bookmap.RegisterHandlers(e, &bookmapApi)
	e.Logger.Fatal(e.Start(":8000"))
}
