;; deps: zxing
(import '[com.google.zxing BarcodeFormat MultiFormatWriter])
(import '[com.google.zxing.client.j2se MatrixToImageWriter])
(import '[java.nio.file Paths])

(let [data "https://example.com"
      m (.encode (MultiFormatWriter.) data BarcodeFormat/QR_CODE 240 240)
      path (Paths/get "qr.png" (make-array String 0))]
  (MatrixToImageWriter/writeToPath m "PNG" path)
  (println "qr.png"))
