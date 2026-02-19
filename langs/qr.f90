! deps: zint
program qr
  implicit none
  call execute_command_line("zint -b 58 -o qr.png -d https://example.com")
  print *, "qr.png"
end program qr
