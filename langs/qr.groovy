class QR {
  static void main(String[] args) {
    def data = "https://example.com"
    def url = "https://api.qrserver.com/v1/create-qr-code/?data=${data}&size=240x240"
    println url
  }
}
