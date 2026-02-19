# Qrozz

Qrozz is a simple QR maker toolkit with two parts:
- A static web app in `app/`
- QR maker snippets in many languages inside `langs/`

## Live QR Maker Link
- QR API (direct image): https://api.qrserver.com/v1/create-qr-code/?data=hello
- Web app (local): open `app/index.html`
- GitHub Pages (after deploy): https://<your-username>.github.io/qrozz/

## How To Use (Web)
1. Open `app/index.html` in a browser.
2. Enter text or a URL.
3. Click **Generate** to get a QR.
4. Click **Open QR Link** to open the QR in a new tab.

## How To Use (Code)
Each file in `langs/` contains a minimal example that generates a QR image URL and prints it.

## Folder Structure
- `app/` static web QR maker
- `langs/` QR maker snippets for many languages

## Notes
- The web app is static and can be deployed to GitHub Pages.
