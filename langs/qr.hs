-- deps: cabal install qrcode JuicyPixels
import Codec.QRCode
import Codec.Picture

main :: IO ()
main = do
  let code = encodeText (ErrorLevel M) Eight "https://example.com"
  let img = toImage 4 4 code
  writePng "qr.png" img
  putStrLn "qr.png"
