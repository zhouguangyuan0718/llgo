package user

import "namedfunccachepanic/purego/dep"

func InstrumentRouteFunc(routeFunc dep.RouteFunction) dep.RouteFunction {
	return dep.RouteFunction(func(req *dep.Request, response *dep.Response) {
		routeFunc(req, response)
	})
}
