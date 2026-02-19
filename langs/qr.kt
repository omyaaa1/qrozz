fun main() {
    val data = "https://example.com"
    val url = "https://api.qrserver.com/v1/create-qr-code/?data=$data&size=240x240"
    println(url)
}
