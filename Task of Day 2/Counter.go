package main

import (
	"fmt"
	"strings"
)

func main() {

	str := "Hello Asmaa Hello Everyone"
	fmt.Println(str)
	fmt.Println("******************")

	arr := strings.Fields(str)
	counter := make(map[string]int)
    for _, word := range arr {
        if _, ok := counter[word]; ok {
            counter[word]++
        } else {
            counter[word] = 1
        }
    }
  
  fmt.Println(counter)

}
