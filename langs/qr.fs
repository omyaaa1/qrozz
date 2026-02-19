// deps: QRCoder
open System
open System.IO
open QRCoder

let data = "https://example.com"
use gen = new QRCodeGenerator()
use qr = gen.CreateQrCode(data, QRCodeGenerator.ECCLevel.M)
let png = new PngByteQRCode(qr)
File.WriteAllBytes("qr.png", png.GetGraphic(10))
printfn "qr.png"
