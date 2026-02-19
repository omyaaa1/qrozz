// Dart
import 'dart:convert';

void main() {
  final data = 'https://example.com';
  final url = 'https://api.qrserver.com/v1/create-qr-code/?data=${Uri.encodeComponent(data)}&size=240x240';
  print(url);
}
