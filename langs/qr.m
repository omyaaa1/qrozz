int main() {
  @autoreleasepool {
    NSString *data = @"https://example.com";
    NSString *url = [NSString stringWithFormat:@"https://api.qrserver.com/v1/create-qr-code/?data=%@&size=240x240", data];
    NSLog(@"%@", url);
  }
  return 0;
}
