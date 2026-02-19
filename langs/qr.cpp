
int main() {
    std::string data = "https://example.com";
    std::cout << "https://api.qrserver.com/v1/create-qr-code/?data=" << data << "&size=240x240\n";
    return 0;
}
