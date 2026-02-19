# deps: nimble install qrcode
import qrcode

let img = qr"https://example.com"
img.savePNG("qr.png")
echo "qr.png"
