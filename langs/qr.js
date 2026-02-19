// JavaScript (Node.js)
const data = "https://example.com";
const url = `https://api.qrserver.com/v1/create-qr-code/?data=${encodeURIComponent(data)}&size=240x240`;
console.log(url);
