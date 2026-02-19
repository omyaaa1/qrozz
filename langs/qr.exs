# deps: mix add qr_code
{:ok, svg} = QRCode.create("https://example.com") |> QRCode.render()
File.write!("qr.svg", svg)
IO.puts("qr.svg")
