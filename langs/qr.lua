-- deps: qrencode
local data = "https://example.com"
os.execute("qrencode -o qr.png '" .. data .. "'")
print("qr.png")
