# Qrozz

Qrozz is a minimal QR maker kit:
- A static web app in `app/`
- QR maker snippets in many languages in `langs/`

## Live Links
- GitHub Pages: https://omyaaa1.github.io/qrozz/
- Vercel: https://qrozz.vercel.app
- Vercel (prod): https://qrozz-e6q4iq5h8-omyaas-projects.vercel.app
- QR API (direct image): https://api.qrserver.com/v1/create-qr-code/?data=hello

## Web App
Open `app/index.html` locally, or use the live demo.

## Code Snippets
Each file in `langs/` generates a QR image locally (offline) using a library or a CLI tool.
The output is usually `qr.png` (or `qr.svg` in a few cases).
If a language needs a dependency, the first line in the file says `deps:` in lowercase.
Some languages call `qrencode` or `zint` CLI for portability.

Languages included:
- Python, JavaScript, TypeScript, C, C++, Java, C#
- Go, Rust, PHP, Ruby, Swift, Kotlin, Dart
- Lua, Perl, R, Julia, Bash, PowerShell, SQL
- Haskell, Elixir, Scala, Objective-C, Groovy, Clojure
- Erlang, Nim, Fortran, COBOL, Zig, OCaml, F#

## Structure
- `app/` static web QR maker
- `langs/` QR maker snippets
