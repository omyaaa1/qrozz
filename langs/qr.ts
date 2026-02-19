// deps: npm i qrcode
import QRCode from 'qrcode';

const data = 'https://example.com';
QRCode.toFile('qr.png', data, { width: 240 }).then(() => {
  console.log('qr.png');
});
