package main

var counter int32 = 40

//export LLGoAdd
func LLGoAdd(a, b int32) int32 {
	return a + b
}

//export LLGoCounterNext
func LLGoCounterNext(delta int32) int32 {
	counter += delta
	return counter
}

func main() {}
