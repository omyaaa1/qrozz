# deps: Imager::QRCode
use Imager::QRCode;
my $data = "https://example.com";
my $img = Imager::QRCode->new(size => 4)->plot($data);
$img->write(file => "qr.png");
print "qr.png\n";
