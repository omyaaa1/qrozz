// deps: macos + coreimage
#import <Foundation/Foundation.h>
#import <CoreImage/CoreImage.h>

int main() {
  @autoreleasepool {
    NSData *data = [@"https://example.com" dataUsingEncoding:NSUTF8StringEncoding];
    CIFilter *f = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [f setValue:data forKey:@"inputMessage"];
    CIImage *ci = f.outputImage;
    CIContext *ctx = [CIContext contextWithOptions:nil];
    CGImageRef cg = [ctx createCGImage:ci fromRect:ci.extent];
    NSBitmapImageRep *rep = [[NSBitmapImageRep alloc] initWithCGImage:cg];
    NSData *png = [rep representationUsingType:NSPNGFileType properties:@{}];
    [png writeToFile:@"qr.png" atomically:YES];
    NSLog(@"qr.png");
    CGImageRelease(cg);
  }
  return 0;
}
