# deps: pip install qrcode[pil]
import qrcode

data = "https://example.com"
img = qrcode.make(data)
img.save("qr.png")
print("qr.png")
