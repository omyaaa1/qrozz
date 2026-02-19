# OCaml
let data = "https://example.com" in
let url = "https://api.qrserver.com/v1/create-qr-code/?data=" ^ data ^ "&size=240x240" in
print_endline url
