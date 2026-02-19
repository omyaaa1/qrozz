// Java
public class QR {
    public static void main(String[] args) {
        String data = "https://example.com";
        String url = "https://api.qrserver.com/v1/create-qr-code/?data=" + data + "&size=240x240";
        System.out.println(url);
    }
}
