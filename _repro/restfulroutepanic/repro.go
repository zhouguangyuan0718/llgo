package restfulroutepanic

import restful "github.com/emicklei/go-restful/v3"

func InstrumentRouteFunc(routeFunc restful.RouteFunction) restful.RouteFunction {
	return restful.RouteFunction(func(req *restful.Request, response *restful.Response) {
		routeFunc(req, response)
	})
}
