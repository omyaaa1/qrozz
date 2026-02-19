
int main() {
    const char *data = "https://example.com";
    printf("https://api.qrserver.com/v1/create-qr-code/?data=%s&size=240x240\n", data);
    return 0;
}
