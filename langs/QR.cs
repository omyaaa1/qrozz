// deps: dotnet add package QRCoder
using System;
using System.IO;
using QRCoder;

class QR {
  static void Main() {
    var data = "https://example.com";
    using var gen = new QRCodeGenerator();
    using var qr = gen.CreateQrCode(data, QRCodeGenerator.ECCLevel.M);
    var png = new PngByteQRCode(qr);
    File.WriteAllBytes("qr.png", png.GetGraphic(10));
    Console.WriteLine("qr.png");
  }
}
