// deps: dart pub add qr image
import 'dart:io';
import 'package:qr/qr.dart';
import 'package:image/image.dart' as img;

void main() {
  final data = 'https://example.com';
  final qr = QrCode(4, QrErrorCorrectLevel.M);
  qr.addData(data);
  final size = qr.moduleCount;
  final image = img.Image(width: size, height: size);
  for (var x = 0; x < size; x++) {
    for (var y = 0; y < size; y++) {
      image.setPixelRgba(x, y, qr.isDark(y, x) ? 0 : 255, qr.isDark(y, x) ? 0 : 255, qr.isDark(y, x) ? 0 : 255);
    }
  }
  File('qr.png').writeAsBytesSync(img.encodePng(image));
  print('qr.png');
}
