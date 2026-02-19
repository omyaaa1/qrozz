fn main() {
    let data = "https://example.com";
    let url = format!("https://api.qrserver.com/v1/create-qr-code/?data={}&size=240x240", data);
    println!("{}", url);
}
