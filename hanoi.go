package main

import "fmt"

func hanoi(n int, x string, y string, z string) {
	if n > 1 {
		hanoi(n-1, x, z, y)
	}
	fmt.Printf("%v=>%v\n", x, y)
	if n > 1 {
		hanoi(n-1, z, y, x)
	}
}

func main() {
	var a int
	fmt.Scan(&a)
	hanoi(a, "a", "b", "c")
}
