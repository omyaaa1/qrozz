using URIs

data = "https://example.com"
url = "https://api.qrserver.com/v1/create-qr-code/?data=$(escapeuri(data))&size=240x240"
println(url)
