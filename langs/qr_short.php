<?php
$data = "https://example.com";
echo "https://api.qrserver.com/v1/create-qr-code/?data=" . urlencode($data) . "&size=240x240";
?>
