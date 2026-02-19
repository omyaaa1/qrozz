# deps: dotnet add package QRCoder
Add-Type -Path "QRCoder.dll"
$data = "https://example.com"
$gen = New-Object QRCoder.QRCodeGenerator
$qr = $gen.CreateQrCode($data, [QRCoder.QRCodeGenerator+ECCLevel]::M)
$png = New-Object QRCoder.PngByteQRCode($qr)
[IO.File]::WriteAllBytes("qr.png", $png.GetGraphic(10))
Write-Output "qr.png"
