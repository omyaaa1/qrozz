# deps: qrencode
DATA="https://example.com"
qrencode -o qr.png "$DATA"
echo "qr.png"
