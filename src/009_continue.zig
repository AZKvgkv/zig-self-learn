const std = @import("std");

pub fn main() !void {
    // 打印 1到 20之间的数字， 但是遇到3 或者 5 的倍数时要跳过打印

    var n: u8 = 1;
    while (n < 20) : (n += 1) {
        if (n % 3 == 0) continue;
        if (n % 5 == 0) continue;
        std.debug.print("{} ", .{n});
    }
    std.debug.print("\n", .{});
}
