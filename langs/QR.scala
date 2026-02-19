object QR {
  def main(args: Array[String]): Unit = {
    val data = "https://example.com"
    val url = s"https://api.qrserver.com/v1/create-qr-code/?data=$data&size=240x240"
    println(url)
  }
}
