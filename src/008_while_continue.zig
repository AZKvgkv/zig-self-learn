// Continue Expression

const std = @import("std");

pub fn main() !void {
    var n: u32 = 2;

    // 注意这里的 : (n *= 2)
    // 这部分代码会在每次循环结束后自动执行
    while (n < 1000) : (n *= 2) {
        std.debug.print("{} ", .{n});
    }
    std.debug.print("n={}\n", .{n});
}
