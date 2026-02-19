import Foundation

let data = "https://example.com"
let url = "https://api.qrserver.com/v1/create-qr-code/?data=\(data)&size=240x240"
print(url)
