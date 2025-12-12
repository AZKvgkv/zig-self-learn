const std = @import("std");

pub fn main() !void {
    var some_primes = [_]u8{ 1, 3, 5, 7, 11, 13, 17, 19 };
    some_primes[2] = 2;

    const first = some_primes[0];

    const val = some_primes[2];

    const length = some_primes.len;
    std.debug.print("The first element is {}, and the third is {}\nThe array length is {}\n", .{ first, val, length });

    const le = [2]u8{ 1, 3 };
    const et = [2]u8{ 5, 7 };

    // 1. 使用 '++' 连接数组
    // 结果: 1, 3, 3, 7
    const leet = le ++ et;

    // 2. 使用 '**' 重复数组
    // 结果: 1, 0, 0, 1 重复三次
    const big_pattern = [_]u8{ 1, 0, 0, 1 } ** 3;

    std.debug.print("LEET: ", .{});
    // 使用for循环遍历输出数组
    for (leet) |i| {
        std.debug.print("{}", .{i});
    }
    std.debug.print("\n", .{});
    std.debug.print("Bits: ", .{});
    for (big_pattern) |b| {
        std.debug.print("{}", .{b});
    }
}
