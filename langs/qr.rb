# deps: gem install rqrcode chunky_png
require "rqrcode"
require "chunky_png"

qr = RQRCode::QRCode.new("https://example.com")
img = qr.as_png(size: 240)
IO.binwrite("qr.png", img.to_s)
puts "qr.png"
