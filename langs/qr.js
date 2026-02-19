// deps: npm i qrcode
const QRCode = require('qrcode');

const data = 'https://example.com';
QRCode.toFile('qr.png', data, { width: 240 }, err => {
  if (err) throw err;
  console.log('qr.png');
});
