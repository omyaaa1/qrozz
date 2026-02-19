// C#
using System;

class QR {
    static void Main() {
        string data = "https://example.com";
        string url = $"https://api.qrserver.com/v1/create-qr-code/?data={data}&size=240x240";
        Console.WriteLine(url);
    }
}
