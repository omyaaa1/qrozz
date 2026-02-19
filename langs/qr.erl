%% deps: qrcode
-module(qr).
-export([main/0]).

main() ->
  {ok, Svg} = qrcode:encode("https://example.com"),
  file:write_file("qr.svg", Svg),
  io:format("qr.svg~n").
