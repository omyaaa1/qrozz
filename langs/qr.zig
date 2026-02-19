const std = @import("std");

pub fn main() !void {
    const data = "https://example.com";
    const url = "https://api.qrserver.com/v1/create-qr-code/?data=" ++ data ++ "&size=240x240";
    try std.io.getStdOut().writer().print("{s}\n", .{url});
}
