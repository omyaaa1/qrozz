// deps: composer require endroid/qr-code
<?php
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;

$qr = QrCode::create("https://example.com");
$writer = new PngWriter();
$result = $writer->write($qr);
$result->saveToFile("qr.png");
echo "qr.png\n";
?>
