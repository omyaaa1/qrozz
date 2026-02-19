(* deps: opam install qrcode *)
let () =
  let data = "https://example.com" in
  let img = Qrcode.encode data in
  Qrcode.save "qr.png" img;
  print_endline "qr.png"
