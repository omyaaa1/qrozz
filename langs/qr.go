// deps: go get github.com/skip2/go-qrcode
package main

import (
  "fmt"
  "github.com/skip2/go-qrcode"
)

func main() {
  data := "https://example.com"
  err := qrcode.WriteFile(data, qrcode.Medium, 240, "qr.png")
  if err != nil { panic(err) }
  fmt.Println("qr.png")
}
