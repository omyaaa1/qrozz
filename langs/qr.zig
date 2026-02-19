const std = @import("std");

pub fn main() !void {
  const cmd = "zint -b 58 -o qr.png -d https://example.com";
  _ = try std.ChildProcess.exec(.{ .allocator = std.heap.page_allocator, .argv = &[_][]const u8{"cmd", "/C", cmd} });
  try std.io.getStdOut().writer().print("qr.png\n", .{});
}
