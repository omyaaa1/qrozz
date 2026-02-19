url = "https://api.qrserver.com/v1/create-qr-code/?data=" <> URI.encode("https://example.com") <> "&size=240x240"
IO.puts(url)
