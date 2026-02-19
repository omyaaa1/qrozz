const text = document.getElementById('text');
const size = document.getElementById('size');
const margin = document.getElementById('margin');
const qr = document.getElementById('qr');
const link = document.getElementById('link');

function buildUrl(value) {
  const data = encodeURIComponent(value || '');
  const sz = Number(size.value || 240);
  const mar = Number(margin.value || 0);
  return `https://api.qrserver.com/v1/create-qr-code/?data=${data}&size=${sz}x${sz}&margin=${mar}`;
}

function render() {
  const value = text.value || 'hello';
  const url = buildUrl(value);
  qr.src = url;
  link.textContent = url;
}

document.getElementById('gen').addEventListener('click', render);
document.getElementById('open').addEventListener('click', () => {
  const url = buildUrl(text.value || 'hello');
  window.open(url, '_blank');
});
document.getElementById('copy').addEventListener('click', async () => {
  const url = buildUrl(text.value || 'hello');
  await navigator.clipboard.writeText(url);
});

render();
