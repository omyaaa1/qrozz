package main

import (
    "fmt"
    "net/url"
)

func main() {
    data := "https://example.com"
    q := url.QueryEscape(data)
    fmt.Printf("https://api.qrserver.com/v1/create-qr-code/?data=%s&size=240x240\n", q)
}
