# deps: import Pkg; Pkg.add("QRCode")
using QRCode

img = qrcode("https://example.com")
save("qr.png", img)
println("qr.png")
