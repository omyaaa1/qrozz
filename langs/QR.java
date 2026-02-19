// deps: com.google.zxing
import java.nio.file.*;
import com.google.zxing.*;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

public class QR {
  public static void main(String[] args) throws Exception {
    String data = "https://example.com";
    BitMatrix m = new MultiFormatWriter().encode(data, BarcodeFormat.QR_CODE, 240, 240);
    Path path = Paths.get("qr.png");
    MatrixToImageWriter.writeToPath(m, "PNG", path);
    System.out.println(path.toString());
  }
}
