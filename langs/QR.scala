// deps: zxing
import com.google.zxing._
import com.google.zxing.client.j2se.MatrixToImageWriter
import java.nio.file.Paths

object QR {
  def main(args: Array[String]): Unit = {
    val data = "https://example.com"
    val m = new MultiFormatWriter().encode(data, BarcodeFormat.QR_CODE, 240, 240)
    val path = Paths.get("qr.png")
    MatrixToImageWriter.writeToPath(m, "PNG", path)
    println("qr.png")
  }
}
