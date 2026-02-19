// deps: libqrencode
#include <qrencode.h>
#include <cstdio>
#include <cstdlib>

int main() {
  const char* data = "https://example.com";
  QRcode* q = QRcode_encodeString8bit(data, 0, QR_ECLEVEL_M);
  if (!q) return 1;
  FILE* f = fopen("qr.pbm", "wb");
  fprintf(f, "P1\n%d %d\n", q->width, q->width);
  for (int y = 0; y < q->width; y++) {
    for (int x = 0; x < q->width; x++) {
      unsigned char b = q->data[y * q->width + x];
      fprintf(f, "%d ", (b & 1) ? 1 : 0);
    }
    fprintf(f, "\n");
  }
  fclose(f);
  QRcode_free(q);
  return 0;
}
