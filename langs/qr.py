import urllib.parse

data = "https://example.com"
url = f"https://api.qrserver.com/v1/create-qr-code/?data={urllib.parse.quote(data)}&size=240x240"
print(url)
