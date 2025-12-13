const std = @import("std");
pub fn main() void {
    const letters = "Hello Zig World!";

    // 重点 1: 数组索引必须是 usize 类型。
    var x: usize = 6;

    // 重点 2: 使用 undefined
    var lang: [3]u8 = undefined;

    // 步骤 1: 取出 'Z'
    lang[0] = letters[x];

    // 步骤 2: 修改 x 并取出 'i'
    x = 7;
    lang[1] = letters[x];

    // 步骤 3: 修改 x 并取出 'g'
    x = 8;
    lang[2] = letters[x];

    // 打印结果：{s} 可以正确处理 [3]u8 数组
    std.debug.print("Program in {s}!\n", .{lang});
}
