require "cgi"

data = "https://example.com"
url = "https://api.qrserver.com/v1/create-qr-code/?data=#{CGI.escape(data)}&size=240x240"
puts url
