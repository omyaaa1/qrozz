// deps: zxing
import com.google.zxing.*
import com.google.zxing.client.j2se.MatrixToImageWriter
import java.nio.file.Paths

def data = "https://example.com"
def m = new MultiFormatWriter().encode(data, BarcodeFormat.QR_CODE, 240, 240)
def path = Paths.get("qr.png")
MatrixToImageWriter.writeToPath(m, "PNG", path)
println "qr.png"
