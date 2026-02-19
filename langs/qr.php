<?php
$data = "https://example.com";
$url = "https://api.qrserver.com/v1/create-qr-code/?data=" . urlencode($data) . "&size=240x240";
echo $url . "\n";
?>
