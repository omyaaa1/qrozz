       identification division.
       program-id. qr.
       procedure division.
           call "SYSTEM" using "zint -b 58 -o qr.png -d https://example.com".
           display "qr.png".
           stop run.
