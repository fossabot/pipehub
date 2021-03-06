package pipehub

import (
	"context"
	"net/http"
)

type handlerInstance interface {
	Close(ctx context.Context) error
}

type handler struct {
	name     string
	endpoint string
	instance handlerInstance
	alias    string
	fn       func(http.Handler) http.Handler
}

func (h handler) valid() bool {
	return h.instance != nil
}
