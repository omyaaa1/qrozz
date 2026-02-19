# Haskell
import Network.URI (escapeURIString, isUnreserved)

main :: IO ()
main = do
  let data' = "https://example.com"
  let url = "https://api.qrserver.com/v1/create-qr-code/?data=" ++ escapeURIString isUnreserved data' ++ "&size=240x240"
  putStrLn url
