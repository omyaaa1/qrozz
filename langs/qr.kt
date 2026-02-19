// deps: zxing
import com.google.zxing.BarcodeFormat
import com.google.zxing.MultiFormatWriter
import com.google.zxing.client.j2se.MatrixToImageWriter
import java.nio.file.Paths

fun main() {
  val data = "https://example.com"
  val m = MultiFormatWriter().encode(data, BarcodeFormat.QR_CODE, 240, 240)
  val path = Paths.get("qr.png")
  MatrixToImageWriter.writeToPath(m, "PNG", path)
  println("qr.png")
}
