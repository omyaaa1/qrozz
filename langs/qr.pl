use URI::Escape;
my $data = "https://example.com";
my $url = "https://api.qrserver.com/v1/create-qr-code/?data=" . uri_escape($data) . "&size=240x240";
print "$url\n";
