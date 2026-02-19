data <- "https://example.com"
url <- paste0("https://api.qrserver.com/v1/create-qr-code/?data=", URLencode(data), "&size=240x240")
cat(url, "\n")
