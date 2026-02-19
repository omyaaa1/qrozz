program qr
  implicit none
  character(len=*), parameter :: data = "https://example.com"
  print *, "https://api.qrserver.com/v1/create-qr-code/?data=" // data // "&size=240x240"
end program qr
