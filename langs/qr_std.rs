// deps: cargo add qrcode image
use qrcode::QrCode;
use image::Luma;

fn main() {
  let data = "https://example.com";
  let code = QrCode::new(data.as_bytes()).unwrap();
  let image = code.render::<Luma<u8>>().build();
  image.save("qr.png").unwrap();
  println!("qr.png");
}
