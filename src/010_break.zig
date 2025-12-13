const std = @import("std");

pub fn main() !void {
    var n: u8 = 1;

    // while (true) 是 Zig 中标准的无限循环写法
    while (true) : (n += 1) {
        // 当n = 4的时候停止
        if (n == 4) break;
    }
    std.debug.print("n={}\n", .{n});
}
