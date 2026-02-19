(println (str "https://api.qrserver.com/v1/create-qr-code/?data="
              (java.net.URLEncoder/encode "https://example.com" "UTF-8")
              "&size=240x240"))
