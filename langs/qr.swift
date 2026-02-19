// deps: macos + coreimage
import Foundation
import CoreImage
import CoreImage.CIFilterBuiltins
import AppKit

let data = "https://example.com".data(using: .utf8)!
let filter = CIFilter.qrCodeGenerator()
filter.message = data
let ciImage = filter.outputImage!
let rep = NSCIImageRep(ciImage: ciImage)
let nsImage = NSImage(size: rep.size)
nsImage.addRepresentation(rep)
let png = NSBitmapImageRep(data: nsImage.tiffRepresentation!)!
let dataOut = png.representation(using: .png, properties: [:])!
try dataOut.write(to: URL(fileURLWithPath: "qr.png"))
print("qr.png")
