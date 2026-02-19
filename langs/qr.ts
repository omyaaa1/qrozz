// TypeScript
const data: string = "https://example.com";
const url: string = `https://api.qrserver.com/v1/create-qr-code/?data=${encodeURIComponent(data)}&size=240x240`;
console.log(url);
