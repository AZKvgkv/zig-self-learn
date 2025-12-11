const std = @import("std");

pub fn main() !void {
    const number: u8 = 42;
    var val: u8 = 12;
    val += number;
    std.debug.print("number = {}, value = {}", .{ number, val });
}
